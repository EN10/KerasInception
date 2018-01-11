from keras.preprocessing import image
from keras.applications.inception_resnet_v2 import *
import numpy as np

model = InceptionResNetV2(weights='imagenet')

img = image.load_img('image.jpg', target_size=(299, 299))
x = image.img_to_array(img)
x = np.expand_dims(x, axis=0)
x = preprocess_input(x)

y = model.predict(x)
for index, res in enumerate(decode_predictions(y)[0]):
    print('{}. {}: {:.3f}%'.format(index + 1, res[1], 100 * res[2]))