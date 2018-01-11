# Models

Models differ based on Accuracy and Performance:

![Models](https://github.com/EN10/KerasInception/raw/master/images/Models.jpg)

[Keras Models](https://keras.io/applications)   
[Keras Models in Tensorflow](https://www.tensorflow.org/api_docs/python/tf/keras/applications)

### Install

For TF missing models requires installing Keras:

Replace `from tensorflow.python.keras...` with just `from keras...`

    sudo apt update 
    sudo apt install python-dev 
    sudo pip install keras

NASnet:     
Fix for `ImportError: No module named nasnet`

    sudo pip install git+git://github.com/keras-team/keras.git --upgrade --no-deps

Models stored in `~/.keras/models/`

### Performance

`TensorFlow binary was not compiled to use: SSE4.1 SSE4.2 AVX`

* Inception ~ 20s
* InceptionResNetV2 ~ 27s   [irn2.py](https://github.com/EN10/KerasInception/blob/master/irn2.py)
* NASnet mobile: ~   20s
* NASnet large:  ~   1m45s

[FloydHub](https://github.com/EN10/FloydHub) increased performance, compiled to use `SSE4.1 SSE4.2 AVX`

* nasnet example [run.sh](https://github.com/EN10/KerasInception/blob/master/models/run.sh)