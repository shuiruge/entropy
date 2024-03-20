import tensorflow as tf


def get_gradient_loss_fn(loss_fn):
  """
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
