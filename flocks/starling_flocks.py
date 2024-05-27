"""
Experiment on criticality by simulating the starling flocks.

References
----------

1. [Scale-free correlations in starling flocks](https://arxiv.org/abs/0911.4393).
2. [Statistical mechanics for natural flocks of birds](https://arxiv.org/abs/1107.0604).
"""

import numpy as np
import tensorflow as tf
from tqdm import tqdm
import matplotlib.pyplot as plt


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


def get_dynamics(num_nb: int, J: float, dt: float, T: float):
    """The dynamics of a bird in a group."""
    @tf.function
    def dynamics(x: tf.Tensor, v: tf.Tensor):
        nb = get_neighbours(x, num_nb)
        nb_v = tf.gather(v, nb, axis=0)
        v += J * (tf.reduce_mean(nb_v, axis=1) - v) * dt
        v += tf.random.normal(tf.shape(v)) * tf.sqrt(2*T*dt)
        x += v * dt
        return x, v
    return dynamics


def binning(x: np.ndarray, y: np.ndarray, num_bins: int,
            agg_fn=np.mean, eps=1e-1):
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


def get_correlation_length_and_supp(x: tf.Tensor, v: tf.Tensor, num_bins: int):
    dist = get_mutual_distance(x)
    dist = tf.reshape(dist, [-1])

    v_mean = tf.reduce_mean(v, axis=0, keepdims=True)
    u = v - v_mean
    inner_u = tf.matmul(u, tf.transpose(u))
    inner_u = tf.reshape(inner_u, [-1])

    # Sort by distance
    ids = tf.argsort(dist, axis=0)
    sorted_inner_u = tf.gather(inner_u, ids)
    sorted_dist = tf.gather(dist, ids)

    r_bin, u_mean, hist = binning(
        sorted_dist.numpy(), sorted_inner_u.numpy(), num_bins)
    corr_len = r_bin[tf.argmin(tf.square(u_mean))]
    return corr_len, (sorted_dist, sorted_inner_u, r_bin, u_mean, hist)


def plot_correlation(save_path: str,
                     batch_size=1000,
                     iter_steps=5000,
                     num_bins=50):
    x = tf.random.uniform([batch_size, 3])
    v = tf.random.uniform([batch_size, 3])
    for _ in range(iter_steps):
        x, v = dynamics(x, v)
 
    corr_len, (sorted_dist, _, r_bin, u_mean, _) = (
        get_correlation_length_and_supp(x, v, num_bins)
    )
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
    plt.savefig(save_path)


def get_group_size(x: tf.Tensor) -> tf.Tensor:
    dist = tf.reshape(get_mutual_distance(x), [-1])
    return tf.reduce_max(dist)


def check_scale_free(dynamics, min_n: int, max_n: int,
                     num_n=10, num_repeats=12,
                     iter_steps=5000, num_bins=50):
    group_sizes, corr_lens = [], []
    for log2_n in tqdm(np.linspace(np.log2(min_n), np.log2(max_n), num_n)):
        n = int(2**log2_n)
        group_sizes.append([])
        corr_lens.append([])
        for _ in range(num_repeats):
            x = tf.random.uniform([n, 3])
            v = tf.random.uniform([n, 3])
        
            for _ in range(iter_steps):
                x, v = dynamics(x, v)

            group_size = get_group_size(x)
            group_sizes[-1].append(group_size)

            corr_len, _ = get_correlation_length_and_supp(x, v, num_bins)
            corr_lens[-1].append(corr_len)
    return group_sizes, corr_lens


def plot_check(group_sizes: list, corr_lens: list, save_path: str):
    corr_len_means = [np.mean(_) for _ in corr_lens]
    corr_len_stds = [np.std(_) for _ in corr_lens]
    group_size_means = [np.mean(_) for _ in group_sizes]
    group_size_stds = [np.std(_) for _ in group_sizes]

    plt.clf()
    plt.errorbar(x=group_size_means, xerr=group_size_stds,
                 y=corr_len_means, yerr=corr_len_stds,
                 capsize=3, fmt="ro", ecolor = "black")
    plt.xlabel('Group Size')
    plt.ylabel('Correlation Length')
    plt.grid()
    plt.savefig(save_path)


if __name__ == '__main__':

    from xmanager import XManager
    xm = XManager('experiments', 'scale_free')

    dynamics = get_dynamics(num_nb=7, J=0., dt=0.01, T=1.)
    plot_correlation(xm.get_path('images/correlation.png'))
    group_sizes, corr_lens = check_scale_free(
        dynamics, min_n=30, max_n=1000)
    plot_check(group_sizes, corr_lens,
               xm.get_path('images/check_scale_free.png'))
