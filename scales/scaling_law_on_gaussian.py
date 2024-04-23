import numpy as np
import tensorflow as tf
from keras import Sequential
from keras.layers import Dense
from keras.losses import MSE
from tqdm import tqdm
import matplotlib.pyplot as plt
from xmanager import XManager

xm = XManager('experiments', 'scaling_law', 'gaussian')

# Reproducibility
tf.keras.utils.set_random_seed(1)
tf.config.experimental.enable_op_determinism()

# Data

class DataGenerator:
    
    def __init__(self, std):
        self.std = std

        # self.W = tf.ones([100, 100]) / tf.sqrt(float(100))
        # Alternatively,
        self.W = tf.random.uniform([100, 100], -1, 1) / tf.sqrt(float(100))

    def __call__(self, num_data):
        input_dim, output_dim = self.W.shape
        x = tf.random.uniform([num_data, input_dim], -1, 1)
        y = tf.nn.tanh(tf.matmul(x, self.W))
        noise = (
            tf.random.truncated_normal([num_data, output_dim])
            * self.std
        )
        return x, y + noise

    @property
    def output_dim(self):
        return self.W.shape[1]


data_gen = DataGenerator(1e-1)


# Model

def train_model(hidden_units):
    # Build model.
    layers = []
    for n in hidden_units:
        layers.append(Dense(n, 'silu'))
    layers.append(Dense(data_gen.output_dim))
    model = Sequential(layers)

    # Compile and train
    model.compile(
        optimizer='adam',
        loss='mse',
    )
    last_val_loss = None
    for _ in range(1000):
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


# Scaling Law

def get_num_params(model):
    num_params = 0
    for layer in model.layers:
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

num_params_lst = []
val_loss_lst = []
for log2_n in tqdm(np.linspace(min_log2_n, max_log2_n, num_log2_n)):
    hidden_units = [1024, int(2**log2_n)]
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
