"""
Experiment on criticality by simulating the starling flocks.

References
----------

1. [Scale-free correlations in starling flocks](https://arxiv.org/abs/0911.4393).
2. [Statistical mechanics for natural flocks of birds](https://arxiv.org/abs/1107.0604).
"""

import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
from tqdm import tqdm
from utils import robust_linear_regression
from xmanager import XManager


XM = XManager('experiments', 'scale_free')


class Flock:

    def __init__(self, size: int, num_nb: int, T: float):
        self.size = int(size)
        self.num_nb = tf.convert_to_tensor(num_nb, 'int64')
        self.T = tf.convert_to_tensor(T, 'float32')

        self.x: tf.Tensor = tf.Variable(tf.random.uniform([size, 3]))
        self.v: tf.Tensor = tf.Variable(tf.random.uniform([size, 3]))
    
    # Use tf.function to (x1.5) speed up the process.
    @tf.function(input_signature=[
        tf.TensorSpec(shape=[], dtype='int64'),
        tf.TensorSpec(shape=[], dtype='float32'),
    ])
    def _evolve(self, iter_steps, dt):
        for _ in tf.range(iter_steps):
            nb = get_neighbours(self.x, self.num_nb)
            nb_v = tf.gather(self.v, nb, axis=0)
            self.v.assign(tf.reduce_mean(nb_v, axis=1))
            # Add Weiner process
            self.v.assign_add(
                tf.random.normal(tf.shape(self.v)) * tf.sqrt(2*self.T*dt)
            )
            self.x.assign_add(self.v * dt)

    def evolve(self, iter_steps, dt):
        self._evolve(
            tf.convert_to_tensor(iter_steps, 'int64'),
            tf.convert_to_tensor(dt, 'float32'),
        )
        return self
 

def get_mutual_distance(batch: tf.Tensor) -> tf.Tensor:
    """See: https://stackoverflow.com/a/37040451"""
    # Compute distance square.
    r = tf.reduce_sum(tf.square(batch), axis=1)
    r = tf.reshape(r, [-1, 1])
    dist_square = (
        r - 2 * tf.matmul(batch, tf.transpose(batch)) + tf.transpose(r)
    )
    # Compute distance.
    dist_square = tf.where(
        dist_square < 0,
        tf.zeros_like(dist_square),
        dist_square)
    return tf.sqrt(dist_square)


def get_neighbours(x: tf.Tensor, num_nb: int) -> tf.Tensor:
    dist = get_mutual_distance(x)
    return tf.math.top_k(-dist, num_nb+1)[1][:, 1:]


def get_polarization(fk: Flock):
    def norm(x):
        return tf.sqrt(tf.reduce_sum(tf.square(x), axis=1, keepdims=True))
    polar = tf.squeeze(
        norm(tf.reduce_mean(fk.v / norm(fk.v), axis=0, keepdims=True))
    )
    return float(polar)


def binning(x: np.ndarray, y: np.ndarray, num_bins: int, agg_fn=np.mean):
    """Used for computing correlation length."""
    x_min = x.min()
    x_max = x.max()
    num_x = len(x)
    bins = np.linspace(x_min, x_max, num_bins+1)
    x_bin = [x_min]
    y_agg = []
    y_cache = []
    hist = []
    i = 0
    for (j, xj) in enumerate(x):
        if j == num_x - 1 or xj >= bins[i+1]:
            i += 1
            if not y_cache:
                continue
            else:
                x_bin.append(xj)
                y_agg.append(agg_fn(y_cache))
                hist.append(len(y_cache))
                y_cache = []
        else:
            y_cache.append(y[j])
    return x_bin, y_agg, hist


def get_correlation_length_and_supp(fk: Flock, num_bins: int):
    dist = get_mutual_distance(fk.x)
    dist = tf.reshape(dist, [-1])

    v_mean = tf.reduce_mean(fk.v, axis=0, keepdims=True)
    u = fk.v - v_mean
    inner_u = tf.matmul(u, tf.transpose(u))
    inner_u = tf.reshape(inner_u, [-1])

    # Sort by distance
    ids = tf.argsort(dist, axis=0)
    sorted_inner_u = tf.gather(inner_u, ids)
    sorted_dist = tf.gather(dist, ids)

    r_bin, u_mean, hist = binning(
        sorted_dist.numpy(), sorted_inner_u.numpy(), num_bins)

    # Compute correlation length.
    # corr_len = r_bin[tf.argmin(tf.square(u_mean))]  # bad.
    u_abs_min = np.min(np.abs(u_mean))
    eps = np.max(np.abs(u_mean)) * 1e-2
    corr_len = r_bin[0]
    for r_val, u_val in zip(r_bin, u_mean):
        if u_val < u_abs_min + eps:
            corr_len = r_val
            break
    return corr_len, (sorted_dist, sorted_inner_u, r_bin, u_mean, hist)


def plot_correlation():
    fk = Flock(size=1000, num_nb=7, T=1e-2)
    fk.evolve(iter_steps=2000, dt=1e-2)
 
    corr_len, (sorted_dist, _, r_bin, u_mean, _) = (
        get_correlation_length_and_supp(fk, num_bins=50)
    )
    plt.clf()
    plt.scatter(r_bin[:-1], u_mean, marker='.')
    plt.hlines(0, xmin=sorted_dist[0], xmax=sorted_dist[-1],
               linestyles='--', color='blue')
    plt.vlines(corr_len, ymin=min(u_mean), ymax=max(u_mean),
               linestyles='--', label='Correlation Length',
               color='red')
    plt.xlabel('Distance')
    plt.ylabel('Correlation of "v - mean(v)"')
    plt.grid()
    plt.legend()
    plt.savefig(XM.get_path('correlation.png'))


def get_group_size(fk: Flock):
    dist = tf.reshape(get_mutual_distance(fk.x), [-1])
    group_size = tf.reduce_max(dist)
    return float(group_size)


def check_scale_free():
    group_sizes, corr_lens = [], []
    for flock_size in tqdm(np.random.randint(400, 800, 10)):
        flock_size = int(flock_size)
        fk = Flock(flock_size, 7, 2e-3)
        fk.evolve(iter_steps=3000, dt=1e-2)

        repeat = 10
        group_sizes.append([])
        corr_lens.append([])
        for _ in range(repeat):
            fk.evolve(iter_steps=200, dt=1e-2)
            group_sizes[-1].append(get_group_size(fk))
            corr_len, _ = get_correlation_length_and_supp(fk, num_bins=50)
            corr_lens[-1].append(corr_len)

    # Plot
    group_sizes = np.asarray(group_sizes)  # [flock_sizes, evolve_histories]
    corr_lens = np.asarray(corr_lens)
    plt.clf()
    plt.errorbar(x=group_sizes.mean(axis=1),
                 xerr=group_sizes.std(axis=1),
                 y=corr_lens.mean(axis=1),
                 yerr=corr_lens.std(axis=1),
                 capsize=3, fmt="ro", ecolor = "black")
    plt.xlabel('Group Size')
    plt.ylabel('Correlation Length')
    plt.grid()
    plt.savefig(XM.get_path('check_scale_free.png'))

    XM.scale_free = {
        'group_sizes': group_sizes,
        'correlation_lengths': corr_lens,
    }
    XM.save_params()


def check_criticality():
    nc_range = range(0, 10)
    plot_x = nc_range
    # T_range = np.linspace(0., 0.3, 10)
    # plot_x = T_range
    repeat = 10

    polars = []
    for nc in tqdm(nc_range):
    # for T in tqdm(T_range):
        polars.append([])
        for _ in range(repeat):
            fk = Flock(size=500, num_nb=nc, T=0.)
            # fk = Flock(size=500, num_nb=7, T=T)
            fk.evolve(iter_steps=2000, dt=1e-2)
            polars[-1].append(get_polarization(fk))

    XM.criticality = {'polarizations': polars}
    XM.save_params()

    polars = np.asarray(polars)  # [params, repeat]

    plt.clf()
    plt.errorbar(x=plot_x, y=polars.mean(axis=1), yerr=polars.std(axis=1),
                 capsize=3, fmt="ro", ecolor = "black")
    plt.xlabel('Neighbours')
    plt.ylabel('Polarization')
    plt.grid()
    plt.savefig(XM.get_path('criticality.png'))


if __name__ == '__main__':

    # check_criticality()
    check_scale_free()
    # plot_correlation()
