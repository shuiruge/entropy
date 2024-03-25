import tensorflow as tf
from collections import namedtuple


def reduce_mean(x, batch_dims):
  rank = len(tf.shape(x))
  axis = [i for i in range(rank) if i < batch_dims]
  return tf.reduce_mean(x, axis)


def get_gradient_loss_fn(loss_fn):
  r"""The general way of computing the "gradient loss". It is defined by

  ```tex
  \begin{equation}
    L(\theta) = \mathbb{E}_{(x,y) \sim p_D} \left[
        \frac{1}{m} \| \frac{\partial S}{\partial x}(x, y, \theta) \|_2^2
      + \frac{1}{n} \| \frac{\partial S}{\partial y}(x, y, \theta) \|_2^2
    \right],
  \end{equation}
  ```
  
  where $x \in \mathbb{R}^m$ and $y \in \mathbb{R}^n$. C.f. section 1.5.5.

  Args:
    loss_fn: Callable
      Accepts a tensor or a list of tensors, and returns a scalar.
  
  Returns: Callable
    Accepts a tensor or a list of tensors, and returns a tensor or a list of
    tensors for loss gradients, as well as a scalar for loss.
  """

  def gradient_loss_fn(inputs, batch_dims=1):
    """
    Args:
      inputs: tf.Tensor or List[tf.Tensor]
      batch_dims: int

    Returns: A pair, if `return_grads`, including:
        - the "gradient loss": loss value per sample.
        - loss gradients: tf.Tensor or List[tf.Tensor].
      Otherwise, return the "gradient loss" only.
    """
    if not isinstance(inputs, (tuple, list)):
      inputs = [inputs]
    inputs = [tf.convert_to_tensor(_) for _ in inputs]

    with tf.GradientTape() as tape:
      tape.watch(inputs)
      loss = loss_fn(inputs)
    grads = tape.gradient(loss, inputs)

    gradient_loss = sum(reduce_mean(tf.square(x), batch_dims) for x in grads)
    return grads, gradient_loss

  return gradient_loss_fn


GradientLoss = namedtuple('GradientLoss', 'grad_x, grad_y, loss')


class GradientMeanSquaredError:
  """Explicit form of the "gradient loss" for mean squared error.
  
  Args:
    model: tf.models.Model
      It accepts a single tensor as input and another tensor as output.
  """
  
  def __init__(self, model):
    self.model = model

  def __call__(self, x, y, batch_dims=1):
    r"""
    Args:
      x: tf.Tensor
        Model input.
      y: tf.Tensor
        Target, shall have the same shape as the model output, up to
        unsqueezed dimensions
      batch_dims: int

    Returns: GradientLoss object.
    """
    x = tf.convert_to_tensor(x)
    y = tf.convert_to_tensor(y)

    with tf.GradientTape() as tape:
      tape.watch(x)
      y_pred = self.model(x)
    grad_x = 2 * tape.gradient(y_pred, x, y_pred - x)

    grad_y = 2 * (y - y_pred)

    loss = sum(reduce_mean(tf.square(_), batch_dims) for _ in (grad_x, grad_y))
    return GradientLoss(grad_x, grad_y, loss)


class GradientRelativeEntropy:
  """Explicit form of the "gradient loss" for relative entropy (KL-divergence).
  
  Args:
    model: tf.models.Model
      It accepts a single tensor as input and another tensor as output.
      The output of shall be the classification logits, thus the probablity
      for each class is given by the softmax of logits.
    clip_eps: The epsilon for clipping the value of target. Defaults to 0.1.
      This value shall not be too small.
  """
  
  def __init__(self, model, clip_eps=0.1):
    self.model = model
    self.clip_eps = clip_eps

  def __call__(self, x, y, batch_dims=1):
    r"""
    Args:
      x: tf.Tensor
        Model input.
      y: tf.Tensor
        Target. As a classification target, it shall be one-hot encoded.
        The last axis indicates categories.
      batch_dims: int

    Returns: GradientLoss object.
    """
    x = tf.convert_to_tensor(x)
    y = tf.convert_to_tensor(y)

    # Compute \partial S / \partial x
    # [..., categories]
    y = tf.clip_by_value(y, self.clip_eps, 1-self.clip_eps)
    with tf.GradientTape() as tape:
      tape.watch(x)
      y_pred = self.model(x)
    # [..., categories]
    q = tf.math.softmax(y_pred)
    # [..., *input_dim]
    grad_x = tape.gradient(y_pred, x, q - y)

    # Compute \partial S / \partial y
    # Since y has been clipped and q is output of softmax, the logorithms are
    # safe.
    # [..., categories]
    z = y * (tf.math.log(y) - tf.math.log(q))
    # [..., categories]
    grad_y = z - y * tf.reduce_sum(z, axis=-1, keepdims=True)

    loss = sum(reduce_mean(tf.square(_), batch_dims) for _ in (grad_x, grad_y))

    return GradientLoss(grad_x, grad_y, loss)
