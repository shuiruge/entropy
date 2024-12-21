import tensorflow as tf
from keras import Sequential
from keras.layers import Dense
from keras.losses import mean_squared_error
import matplotlib.pyplot as plt
from xmanager import XManager

xm = XManager('experiments', 'kadanoff_on_gaussian')

# Reproducibility
tf.keras.utils.set_random_seed(42)
tf.config.experimental.enable_op_determinism()

# Data

class DataGenerator:
    
    def __init__(self, dim, std):
        self.dim = dim
        self.std = std

        # self.W = tf.ones([dim, dim]) / tf.sqrt(float(dim))
        # Alternatively,
        self.W = tf.random.uniform([dim, dim], -1, 1) / tf.sqrt(float(dim))

    def __call__(self, num_data):
        x = tf.random.uniform([num_data, self.dim], -1, 1)
        y = tf.matmul(x, self.W)
        y += self.std * tf.random.normal(tf.shape(y))  # noise.
        return x, y


dim = 100
data_gen = DataGenerator(dim, 1e-1)
x, y = data_gen(10**4)

model = Sequential([
    Dense(1024),  # embedding.
    Dense(2048, 'silu'),
    Dense(dim),
])
model.compile(loss='mse', optimizer='adam')
model(x[:10])  # build.

def plot_weights(path):
    plt.clf()
    fig, axes = plt.subplots(3, 2, figsize=(10, 15), sharex=True)
    for i, layer in enumerate(model.layers):
        W, b = layer.weights
        axes[i][0].hist(W.numpy().reshape([-1]), 100, label=f'W_{i}')
        axes[i][0].legend()
        axes[i][1].hist(b.numpy().reshape([-1]), 100, label=f'b_{i}')
        axes[i][1].legend()
    plt.savefig(path)

last_val_loss = None
plot_weights(xm.get_path('weights/epoch_0.png'))
for epoch in range(1000):
    x_train, y_train = data_gen(10**5)
    x_test, y_test = data_gen(10**4)
    model.fit(
        x_train, y_train,
        batch_size=2**10,
        verbose=0,
    )
    plot_weights(xm.get_path(f'weights/epoch_{epoch+1}.png'))
    val_loss = tf.reduce_mean(mean_squared_error(y_test, model(x_test)))
    # print(f'Validation loss = {val_loss.numpy()}.')
    if last_val_loss is None or val_loss < last_val_loss:
        last_val_loss = val_loss
    else:
        break
else:
    ValueError('Cannot early stop.')

float(val_loss)


