import numpy as np
import tensorflow as tf
from keras import Sequential
from keras.layers import Dense
from keras.losses import MSE
from keras.optimizers import AdamW
from tqdm import tqdm
import matplotlib.pyplot as plt
from scipy.stats import linregress
from xmanager import XManager

xm = XManager('experiments/scaling_law_on_gaussian')

# Reproducibility
tf.keras.utils.set_random_seed(1)
tf.config.experimental.enable_op_determinism()

# Data
class DataGenerator:
    
    def __init__(self, dim, std):
        self.dim = dim
        self.std = std

        self.W = (
            tf.random.uniform([dim, dim], minval=-1., maxval=1)
            / tf.sqrt(float(dim))
        )

    def __call__(self, num_data):
        x = tf.random.uniform([num_data, self.dim], minval=-1, maxval=1.)
        noise = self.std * tf.random.truncated_normal([num_data, self.dim])
        y = tf.matmul(x, self.W) + noise
        return x, y


dim = 100
data_gen = DataGenerator(dim, 1e-1)

# Model

def train_model(hidden_units):
    # Build model.
    layers = []
    layers.append(
        Dense(hidden_units[0])  # embedding.
        # Dense(hidden_units[0], 'relu')  # no embedding.
    )
    for n in hidden_units[1:]:
        layers.append(Dense(n, 'silu'))
    layers.append(Dense(dim))  # output.
    model = Sequential(layers)

    # Compile and train
    model.compile(
        optimizer=AdamW(),
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
        # print(f'Validation loss = {val_loss.numpy()}.')
        if last_val_loss is None or val_loss < last_val_loss:
            last_val_loss = val_loss
        else:
            return model, float(val_loss)
    raise ValueError('Cannot stop training.')


embed_dim = 2**10  # shall not be too small.
min_log2_n = 4
max_log2_n = 12
num_log2_n = 10
num_hidden_layers = 2

hidden_units_lst = []
eval_losses = []
for log2_n in tqdm(np.linspace(min_log2_n, max_log2_n, num_log2_n)):
    n = int(2**log2_n)
    hidden_units = [embed_dim] + [n for _ in range(num_hidden_layers)]
    model, val_loss = train_model(hidden_units)

    hidden_units_lst.append(hidden_units)
    eval_losses.append(val_loss)


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
plt.scatter(log_num_params, log_eval_loss, c=np.array(mask), label='data')
plt.plot(log_num_params, fitted_line, 'r', label='fitted line')
plt.xlabel('log2(N)')
plt.ylabel('log2(L)')
plt.legend()
plt.grid()
plt.savefig(xm.get_path('log_log_plot.png'))

xm.save_params()
