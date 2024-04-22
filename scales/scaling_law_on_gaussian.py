import numpy as np
import tensorflow as tf
from keras import Sequential
from keras.layers import Dense
from keras.losses import MSE
from keras.optimizers import Adam
from tqdm import tqdm
import matplotlib.pyplot as plt
from scipy.stats import linregress
from xmanager import XManager

xm = XManager('experiments', 'scaling_law', 'gaussian')

# Reproducibility
tf.keras.utils.set_random_seed(1)
tf.config.experimental.enable_op_determinism()

# Data

class DataGenerator:
    
    def __init__(self, input_dim, shift, output_dim, std, fn=None):
        self.input_dim = input_dim
        self.shift = shift
        self.output_dim = output_dim
        self.std = std
        self.fn = fn

        # self.W = tf.ones([input_dim, output_dim]) / tf.sqrt(float(input_dim))
        # Alternatively,
        self.W = (
            tf.random.uniform([input_dim, output_dim], -1, 1)
            / tf.sqrt(float(input_dim))
        )

    def __call__(self, num_data):
        x = tf.random.uniform([num_data, self.input_dim], -1, 1)
        y = tf.matmul(x, self.W)
        if self.fn is not None:
            y = self.fn(y)
        noise = (
            tf.random.truncated_normal([num_data, self.output_dim])
            * self.std
        )
        return x + self.shift, y + noise


input_dim = 200
output_dim = 100
data_gen = DataGenerator(input_dim, 0.2, output_dim, 1e-1, tf.nn.tanh)

# Model

def train_model(hidden_units, use_embedding=False):
    # Build model.
    layers = []
    if use_embedding:
        assert len(hidden_units) > 1
        layers.append(Dense(hidden_units[0]))
    else:
        layers.append(Dense(hidden_units[0], 'silu'))
    for n in hidden_units[1:]:
        layers.append(Dense(n, 'silu'))
    layers.append(Dense(output_dim))
    model = Sequential(layers)

    # Compile and train
    model.compile(
        optimizer=Adam(),
        loss=MSE,
    )
    last_val_loss = None
    for epoch in range(1000):
        x_train, y_train = data_gen(10**5)
        x_test, y_test = data_gen(10**4)
        model.fit(
            x_train, y_train,
            batch_size=2**10,
            verbose=0,
        )
        val_loss = tf.reduce_mean(MSE(y_test, model(x_test)))
        if last_val_loss is None or val_loss < last_val_loss:
            last_val_loss = val_loss
        else:
            return model, float(val_loss)
    raise ValueError('Cannot stop training.')

# Plots the weights
# model, val_loss = train_model([1024, 2048])
# for param in model.weights:
#     plt.clf()
#     plt.hist(param.numpy().reshape([-1]), 100)
#     plt.savefig(xm.get_path(f'params/{param.name}.png'))

# Test if the model predicts the target (without noise).
# data_gen_2 = DataGenerator(input_dim, output_dim, 0.)
# x, y = data_gen_2(1000)
# loss_without_noise = float(tf.reduce_mean(MSE(y, model(x))))
# xm.val_loss = val_loss
# xm.loss_without_noise = loss_without_noise

# Layer-wise Outputs.

# z1 = Sequential(model.layers[:1])(x)
# z2 = Sequential(model.layers[:2])(x)
# z3 = Sequential(model.layers[:3])(x)

# plt.clf()
# plt.plot(x[0], label='x', alpha=0.3)
# plt.plot(z1[0], label='z1', alpha=0.3)
# plt.plot(z2[0], label='z2', alpha=0.3)
# plt.plot(z3[0], label='z3', alpha=0.3)
# plt.plot(y[0], label='y', alpha=0.3)
# plt.legend()
# plt.savefig(xm.get_path('layerwise_outputs.png'))

# Scaling Law

def get_num_params(model):
    num_params = 0
    for layer in model.layers[1:]:
        W, b = layer.weights
        num_params += W.shape[0] * W.shape[1]
        num_params += b.shape[0]
    return num_params


def plot_params(model, save_path):
    plt.clf()
    n = len(model.layers)
    fig, axes = plt.subplots(2, n, figsize=(5*n, 10))
    for i, layer in enumerate(model.layers):
        W, b = layer.weights
        axes[0][i].hist(W.numpy().reshape([-1]), 100, label=f'W_{i}')
        axes[0][i].legend()
        axes[0][i].grid()
        axes[1][i].hist(b.numpy().reshape([-1]), 100, label=f'b_{i}')
        axes[1][i].legend()
        axes[1][i].grid()
    fig.savefig(xm.get_path(save_path))


min_log2_n = 4
max_log2_n = 8
num_log2_n = 20
num_hidden_layers = 2

num_params_lst = []
val_loss_lst = []
for log2_n in tqdm(np.linspace(min_log2_n, max_log2_n, num_log2_n)):
    n = int(2**log2_n)
    hidden_units = [n for _ in range(num_hidden_layers)]
    model, val_loss = train_model(hidden_units)
    num_params = get_num_params(model)
    num_params_lst.append(num_params)
    val_loss_lst.append(val_loss)
    plot_params(model, f'weights_{np.log2(num_params):.2f}.png')


log_num_params = np.array([np.log2(_) for _ in num_params_lst])
log_val_loss = np.array([np.log2(_) for _ in val_loss_lst])

plt.clf()
plt.scatter(log_num_params, log_val_loss)
plt.xlabel('log2(N)')
plt.ylabel('log2(L)')
plt.legend()
plt.grid()
plt.savefig(xm.get_path('log_log_plot.png'))

# xm.save_params()
