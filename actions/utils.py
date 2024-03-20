import tensorflow as tf


def get_gradient_loss_fn(loss_fn):
  """The general way of computing the "gradient loss".

  Args:
    loss_fn: Callable
      Accepts a tensor or a list of tensors, and returns a scalar.
  
  Returns: Callable
    The same signature as get_loss.
  """
  def gradient_loss_fn(inputs):
    with tf.GradientTape() as tape:
      tape.watch(inputs)
      loss = loss_fn(inputs)
    loss_grads = tape.gradient(loss, inputs)
    return sum(tf.reduce_mean(tf.square(x)) for x in loss_grads)
  return gradient_loss_fn


class GradientMSE:
  """Explicit form of the "gradient loss" for mean squared error.
  
  Args:
    model: tf.models.Model
  """
  
  def __init__(self, model):
    self.model = model

  def __call__(self, x, y):
    """
    Args:
      x: tf.Tensor
        Model input.
      y: tf.Tensor
        Target, shall have the same shape as the model output, up to
        unsqueezed dimensions

    Returns: tf.Tensor
      Scalar shape.
    """
    with tf.GradientTape() as tape:
      tape.watch(x)
      y_pred = self.model(x)
    grad = tape.gradient(y_pred, x)

    # Compute MSE.
    # To obtain the correct result, we have to sequeeze the output to ensure
    # that it shares the same shape as the target.
    y_pred = tf.squeeze(y_pred)
    mse = tf.reduce_mean(tf.square(y - y_pred))

    # Compute the mean square of model gradient.
    grad_ms = tf.reduce_mean(tf.square(grad))

    return mse * (1 + grad_ms)
