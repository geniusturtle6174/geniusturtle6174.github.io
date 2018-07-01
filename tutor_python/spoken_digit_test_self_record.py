import tensorflow as tf
import numpy as np
import os
import time
import scipy.io.wavfile
import scipy.fftpack

def fftOneSide(frameMat, fftLen):
    magSpec = abs(scipy.fftpack.fft(frameMat, n=fftLen, axis=0))[0:fftLen//2+1, :]
    magSpec[1:fftLen//2, :] = magSpec[1:fftLen//2, :] * 2
    return magSpec

def buffer(y, frameSize, overlap):
    step = frameSize - overlap
    frameCount = int(np.floor((len(y)-overlap)/step))
    out = np.zeros((frameSize, frameCount))
    for i in range(0, frameCount):
        startIndex = i*step
        out[:, i] = y[startIndex:(startIndex+frameSize)]
    return out

def wavToFea(inputFileName, frameSize, hopSize):
    fs, y = scipy.io.wavfile.read(inputFileName)
    y = y / 32768.0
    idx = np.argmax(np.abs(y))
    y = y[idx-8000:idx+8000]
    if(len(y)<16000):
        y = np.hstack([y, np.zeros(16000-len(y))])
    else:
        y = y[:16000]
    overlap = frameSize - hopSize
    frameMat = buffer(y, frameSize, overlap)
    frameSize, frameNum = frameMat.shape
    magSpec = fftOneSide(frameMat, frameSize)
    return magSpec

frame_size = 1024
hop_size = 512
fea = wavToFea(
    'C:\\Users\\geniusturtle\\Desktop\\rec\\20180628_140247.wav',
    frame_size, hop_size
)[np.newaxis, :, :, np.newaxis]

# Make network
ph_x = tf.placeholder(tf.float32, [None, fea.shape[1], fea.shape[2], 1])
# Conv layer 1
h = tf.layers.conv2d(ph_x, 64, [513, 4], activation=tf.nn.relu)
h = tf.layers.max_pooling2d(h, [1, 2], [1, 2])
# Conv layer 2
h = tf.layers.conv2d(h, 64, [1, 4], activation=tf.nn.relu)
h = tf.layers.max_pooling2d(h, [1, 2], [1, 2])
# Dense layer
h = tf.layers.flatten(h)
h = tf.layers.dense(h, 256, activation=tf.nn.relu)
h = tf.layers.dropout(h, rate=0.5, training=False)
out = tf.layers.dense(h, 10)

sess = tf.Session()
saver = tf.train.Saver()
saver.restore(sess, os.path.join('model_sd', 'model.ckpt'))

recog = sess.run([out], feed_dict={ph_x: fea})[0]
recog_idx = np.argmax(recog, axis=1)
print('Recognized spoken digit is:', recog_idx)
