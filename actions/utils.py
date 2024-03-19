import tensorflow as tf


def get_gradient_loss_fn(get_loss):
    def get_gradient_loss(inputs):
        with tf.GradientTape() as tape:
            tape.watch(inputs)
            loss = get_loss(inputs)
        loss_grads = tape.gradient(loss, inputs)
        return sum(tf.reduce_mean(tf.square(x)) for x in loss_grads)
    return get_gradient_loss
