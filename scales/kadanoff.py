import numpy as np
import tensorflow as tf
from keras import Sequential
from keras.layers import Dense
from keras.losses import SparseCategoricalCrossentropy
from keras.optimizers import AdamW
from keras.callbacks import EarlyStopping
from tqdm import tqdm

from xmanager import XManager

xm = XManager('experiments/kadanoff')

# Reproducibility
xm.seed = 42
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

def get_model(hidden_units, train=True):
    # Build model.
    layers = []
    layers.append(
        Dense(hidden_units[0])  # embedding.
    )
    for n in hidden_units[1:]:
        layers.append(Dense(n, 'silu'))
    layers.append(Dense(10, 'softmax'))  # output.
    model = Sequential(layers)
    model(x_train[:10])  # build

    # Compile and train
    model.compile(
        optimizer=AdamW(),
        loss=SparseCategoricalCrossentropy(),
    )
    if train:
        model.fit(
            x_train, y_train,
            batch_size=2**14,
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
    return float(loss_fn(y_test, y_pred))


# --- Kadanoff Process ---

def shrink_model(model, shrink_ratio):
    assert len(model.layers) == 3
    embed_dim = model.layers[0].weights[1].shape[0]
    hidden_dim = model.layers[1].weights[1].shape[0]
    smaller_model = get_model([embed_dim, int(hidden_dim*shrink_ratio)],
                              train=False)

    # Embedding layer
    layer = smaller_model.layers[0]
    W, b = layer.weights
    W.assign(model.layers[0].weights[0])
    b.assign(model.layers[0].weights[1])

    ids = np.random.choice(range(hidden_dim), int(hidden_dim*shrink_ratio),
                           replace=False)
    rescale = 1 / shrink_ratio

    # Hidden layer
    layer = smaller_model.layers[1]
    W, b = layer.weights
    W.assign(
        rescale * tf.gather(model.layers[1].weights[0], ids, axis=1)
    )
    b.assign(
        rescale * tf.gather(model.layers[1].weights[1], ids, axis=0)
    )

    # Output layer
    layer = smaller_model.layers[2]
    W, b = layer.weights
    W.assign(
        tf.gather(model.layers[2].weights[0], ids, axis=0)
    )
    b.assign(
        model.layers[2].weights[1]
    )
    return smaller_model, ids


# --- Scaling Law ---

def get_num_params(model):
    hidden_units = []
    for layer in model.layers[:-1]:
        hidden_units.append(layer.weights[1].shape[0])

    num_params = 0
    # num_params += 28*28 * hidden_units[0]  # shall not add this.
    for n1, n2 in zip(hidden_units[:-1], hidden_units[1:]):
        num_params += n1 * n2
    num_params += hidden_units[-1] * 10  # this will not change the slope.
    return num_params


def get_slope(model, other_model):
    loss = get_validation_loss(model)
    other_loss = get_validation_loss(other_model)
    num_params = get_num_params(model)
    other_num_params = get_num_params(other_model)
    return (np.log2(loss) - np.log2(other_loss)) / (np.log2(num_params) - np.log2(other_num_params))


xm.hidden_units = [1024, 2048]
big_model = get_model(xm.hidden_units)
xm.big_model_loss = get_validation_loss(big_model)

# Find a better way of shrinking
xm.shrink_ratio = 1/2
xm.num_iter = 100
best_loss = None
best_shrinked_model = None
for i in tqdm(range(xm.num_iter)):
    shrinked_model, _ = shrink_model(big_model, xm.shrink_ratio)
    loss = get_validation_loss(shrinked_model)
    if best_loss is None or loss < best_loss:
        best_loss = loss
        best_shrinked_model = shrinked_model
xm.slope = get_slope(big_model, best_shrinked_model)

small_model = get_model([xm.hidden_units[0], int(xm.hidden_units[1]*xm.shrink_ratio)])
xm.baseline_slope = get_slope(big_model, small_model)

xm.save_params()
