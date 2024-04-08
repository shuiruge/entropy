import numpy as np
import tensorflow as tf
from keras import Sequential
from keras.layers import Dense
from keras.losses import SparseCategoricalCrossentropy
from keras.optimizers import AdamW
from keras.callbacks import EarlyStopping
import matplotlib.pyplot as plt
from xmanager import XManager

xm = XManager('experiments/taylor_expansion_of_action')

# Reproducibility
xm.seed = 1
tf.keras.utils.set_random_seed(xm.seed)
tf.config.experimental.enable_op_determinism()

# --- Data ---

mnist = tf.keras.datasets.fashion_mnist
(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train = x_train.astype('float32').reshape([-1, 28*28]) / 255.0
x_test = x_test.astype('float32').reshape([-1, 28*28]) / 255.0
y_train = y_train.astype('int32')
y_test = y_test.astype('int32')


# --- Model ---

def train_model(hidden_units):
    # Build model.
    layers = []
    layers.append(
        Dense(hidden_units[0])  # embedding.
    )
    for n in hidden_units[1:]:
        layers.append(Dense(n, 'silu'))
    layers.append(Dense(10))  # output.
    model = Sequential(layers)

    # Compile and train
    model.compile(
        optimizer=AdamW(),
        loss=SparseCategoricalCrossentropy(from_logits=True),
    )
    model.fit(
        x_train, y_train,
        batch_size=2**12,
        validation_data=(x_test, y_test),
        epochs=10000,  # sufficiently great enough.
        callbacks=[
            EarlyStopping(monitor='val_loss'),
        ],
        verbose=0,
    )
    return model

xm.hidden_units = [1024, 4096]
model = train_model(xm.hidden_units)

# The best fit parameters: \theta_{\star}
U, c = model.layers[-1].weights
U = tf.transpose(U)
W, b = model.layers[-2].weights
W = tf.transpose(W)

# Plot \theta
fig, axes = plt.subplots(2, 2, figsize=(10, 10), sharex=True)
axes[0][0].hist(U.numpy().reshape([-1]), 100, label='U')
axes[0][0].legend()
axes[0][1].hist(c.numpy().reshape([-1]), 100, label='c')
axes[0][1].legend()
axes[1][0].hist(W.numpy().reshape([-1]), 100, label='W')
axes[1][0].legend()
axes[1][1].hist(b.numpy().reshape([-1]), 100, label='b')
axes[1][1].legend()
plt.savefig(xm.get_path('theta_histogram.png'))


# --- Taylor Expansion ---

# Embedding.
z = Sequential(model.layers[:1])(x_train)
# E_p[z_a].
Z = tf.reduce_mean(z, axis=0)

# E_{p(z\|a)}[z_b]
Za = []
for a in range(10):
    Za.append(
        np.take(z, np.where(y_train == a), axis=0)[0]
    )
# Compute J_{ab}.
J2 = []
for _ in Za:
    J2.append(Z - tf.reduce_mean(_, axis=0))
J2 = tf.stack(J2, axis=0).numpy()

def tensor_product(*args):
    if len(args) == 2:
        a, b = args
        a = tf.expand_dims(a, axis=-1)
        b = tf.expand_dims(b, axis=-2)
        return a * b
    elif len(args) > 2:
        y = tensor_product(*args[:2])
        new_args = [y] + list(args[2:])
        return tensor_product(*new_args)
    else:
        raise ValueError()

# E_p[z_a z_b]
ZZ = tf.reduce_mean(tensor_product(z[:200], z[:200]), axis=0)
# E_{p(z\|a)}[z_b z_c]
ZZa = []
for a in range(10):
    za = np.take(z, np.where(y_train == a), axis=0)[0]
    ZZa.append(
        tensor_product(za[:50], za[:50])
    )
# Compute J_{abc}.
J3 = []
for _ in ZZa:
    J3.append(ZZ - tf.reduce_mean(_, axis=0))
J3 = tf.stack(J3, axis=0).numpy()

# Plot Js
fig, axes = plt.subplots(1, 2, figsize=(10, 5), sharex=True)
axes[0].hist(J2.reshape([-1]), 100, label='J2')
axes[0].legend()
axes[1].hist(J3.reshape([-1]), 100, label='J3')
axes[1].legend()
plt.savefig(xm.get_path('J_histogram.png'))

# Parameters for computing S_2 and S_3.
M = 10  # number of classes.
Mf = tf.cast(M, tf.float32)  # float M.
I2 = tf.linalg.diag(tf.ones([M]))  # \delta_{ab}

# \delta_{abc}
I3 = np.zeros([M, M, M])
for i in range(M):
    I3[i, i, i] = 1
I3 = tf.constant(I3, dtype=tf.float32)

A2 = I2 - 1/Mf
B3 = (
    I3
    - (I2[:,:,tf.newaxis] + I2[:,tf.newaxis,:] + I2[tf.newaxis,:,:]) / Mf
    + 2 / (Mf**2)
)

def get_S0():
    """The zeroth order term."""
    return tf.math.log(Mf)

def get_S2(U, c, W):
    """The second order terms."""
    return (
        0.5 / Mf * tf.reduce_sum(A2 * tensor_product(c, c)),
        0.5 / Mf / 2 * tf.reduce_sum(J2 * tf.matmul(U, W)),
    )

def get_S3(U, c, W, b):
    """The third order terms."""
    return (
        (1/6/Mf) * tf.reduce_sum(B3 * tensor_product(c, c, c)),
        (1/12/Mf) * tf.reduce_sum(A2 * tensor_product(tf.linalg.matvec(U, b), c)),
        (1/12/Mf) * tf.reduce_sum(tensor_product(A2, Z) * tensor_product(c, tf.matmul(U, W))),
        (1/12/Mf) * tf.reduce_sum(J2 * tf.einsum('ab,bc,b->ac', U, W, b)),
        (1/12/Mf) * tf.reduce_sum(J3 * tf.einsum('ab,bc,bd->acd', U, W, W)),
    )

xm.S2_terms = [float(_) for _ in get_S2(U, c, W)]
xm.S3_terms = [float(_) for _ in get_S3(U, c, W, b)]

# Plot correlations for S2
fig, axes = plt.subplots(1, 3, figsize=(15, 5))
axes[0].hist(J2.reshape([-1]), 100, label='J2')
axes[0].legend()
axes[1].hist(tf.matmul(U, W).numpy().reshape([-1]), 100, label='UW1')
axes[1].legend()
axes[2].hist((J2 * tf.matmul(U, W)).numpy().reshape([-1]), 100, label='J2 * UW1')
axes[2].legend()
plt.savefig(xm.get_path('J2_UW1_correlation_histogram.png'))

# Plot correlations for S3
fig, axes = plt.subplots(1, 3, figsize=(15, 5))
axes[0].hist(J3.reshape([-1]), 100, label='J3')
axes[0].legend()
axes[1].hist(tf.einsum('ab,bc,bd->acd', U, W, W).numpy().reshape([-1]), 100, label='UW2')
axes[1].legend()
axes[2].hist((J3 * tf.einsum('ab,bc,bd->acd', U, W, W)).numpy().reshape([-1]), 1000, label='J3 * UW2')
axes[2].set_xlim([-1e-3, 1e-3])
axes[2].legend()
plt.savefig(xm.get_path('J3_UW2_correlation_histogram.png'))

xm.save_params()
