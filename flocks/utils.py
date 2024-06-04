import numpy as np
from scipy.stats import linregress


def robust_linear_regression(x, y, outliers_sigma=3):
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
