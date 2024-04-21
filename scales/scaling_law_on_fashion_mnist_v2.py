# Version 2: With the embedding layer fixed.

import numpy as np
import tensorflow as tf
from keras import Sequential
from keras.layers import Dense
from keras.losses import SparseCategoricalCrossentropy
from keras.optimizers import AdamW
from keras.callbacks import EarlyStopping
from tqdm import tqdm
import matplotlib.pyplot as plt
from scipy.stats import linregress
from xmanager import XManager

xm = XManager('experiments/scaling_law_on_fashion_mnist_v2')

# Reproducibility
xm.seed = 1
tf.keras.utils.set_random_seed(xm.seed)
tf.config.experimental.enable_op_determinism()

# Data
mnist = tf.keras.datasets.fashion_mnist
(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train = x_train.astype('float32').reshape([-1, 28*28]) / 255.0
x_test = x_test.astype('float32').reshape([-1, 28*28]) / 255.0
y_train = y_train.astype('int32')
y_test = y_test.astype('int32')

# Model

xm.batch_size = 2**12  # shall not be too small.


def train_model(hidden_units, embedding_layer=None):
    # Build model.
    layers = []
    if embedding_layer:
        layers.append(embedding_layer)
    else:
        layers.append(
            Dense(hidden_units[0])  # embedding.
        )
    for n in hidden_units[1:]:
        layers.append(Dense(n, 'relu'))
    layers.append(Dense(10, 'softmax'))  # output.
    model = Sequential(layers)

    # Compile and train
    model.compile(
        optimizer=AdamW(),
        loss=SparseCategoricalCrossentropy(),
    )
    model.fit(
        x_train, y_train,
        batch_size=xm.batch_size,
        validation_data=(x_test, y_test),
        epochs=10000,  # sufficiently great enough.
        callbacks=[
            EarlyStopping(monitor='val_loss'),
        ],
        verbose=0,
    )
    return model


def get_validation_loss(model):
    y_pred = model(x_test)
    loss_fn = SparseCategoricalCrossentropy()
    return loss_fn(y_test, y_pred)


# Fix embedding layer.
xm.embedding_dim = 2**10
base_model = train_model([xm.embedding_dim, 1024])
embedding_layer = Dense(xm.embedding_dim, trainable=False)
embedding_layer(x_test[:10])
embedding_layer.weights[0].assign(
    base_model.layers[0].weights[0]
)
embedding_layer.weights[1].assign(
    base_model.layers[0].weights[1]
)


xm.min_log2_n = 4
xm.max_log2_n = 12
xm.num_log2_n = 10
xm.num_hidden_layers = 2

hidden_units_lst = []
eval_losses = []
for log2_n in tqdm(np.linspace(xm.min_log2_n, xm.max_log2_n, xm.num_log2_n)):
    n = int(2**log2_n)
    hidden_units = [xm.embedding_dim] + [n for _ in range(xm.num_hidden_layers)]
    model = train_model(hidden_units, embedding_layer)
    eval_loss = get_validation_loss(model)

    hidden_units_lst.append(hidden_units)
    eval_losses.append(eval_loss)


def get_num_params(hidden_units):
    num_params = 0
    # num_params += 28*28 * hidden_units[0]  # shall not add this.
    for n1, n2 in zip(hidden_units[:-1], hidden_units[1:]):
        num_params += n1 * n2
    num_params += hidden_units[-1] * 10  # this will not change the slope.
    return num_params


num_params_lst = [get_num_params(_) for _ in hidden_units_lst]
log_num_params = np.array([np.log2(_) for _ in num_params_lst])


def robust_linear_regression(x, y, outliers_sigma=2):
    slope, intercept, *_ = linregress(x, y)
    errors = np.abs(y - (intercept + slope * x))
    min_error = errors.mean() - outliers_sigma * errors.std()
    max_error = errors.mean() + outliers_sigma * errors.std()
    valid_ids, mask = [], []
    for i, e in enumerate(errors):
        if e > min_error and e < max_error:
            valid_ids.append(i)
            mask.append(0)
        else:
            mask.append(1)
    return mask, *linregress(x[valid_ids], y[valid_ids])


log_eval_loss = np.array([np.log2(_) for _ in eval_losses])

mask, xm.slope, xm.intercept, xm.r_value, xm.p_value, xm.stderr = \
    robust_linear_regression(log_num_params, log_eval_loss)

fitted_line = xm.intercept + xm.slope * log_num_params
plt.clf()
plt.scatter(log_num_params, log_eval_loss, c=np.array(mask), label='data')
plt.plot(log_num_params, fitted_line, 'r', label='fitted line')
plt.xlabel('log2(N)')
plt.ylabel('log2(L)')
plt.legend()
plt.grid()
plt.savefig(xm.get_path('log_log_plot.png'))

xm.save_params()
