# Models

Models differ based on Accuracy and Performance:

![Models](https://github.com/EN10/KerasInception/raw/master/images/Models.jpg)

* [Keras Models](https://keras.io/applications)   
* [Keras Models in Tensorflow](https://www.tensorflow.org/api_docs/python/tf/keras/applications)

Models stored in `~/.keras/models/`

### Install

Models missing from TensorFlow require installing Keras:   
Replace `from tensorflow.python.keras...` with just `from keras...`

    sudo apt update 
    sudo apt install python-dev 
    sudo pip install keras

NASnet Error `ImportError: No module named nasnet` Fix: 

    sudo pip install git+git://github.com/keras-team/keras.git --upgrade --no-deps

### Performance

    time python predict.py

`TensorFlow binary was not compiled to use: SSE4.1 SSE4.2 AVX`

| Model | Performance (c9 approx) | Size | Example |
| ------------- | ------------- | ------------- | ------------- |
| Inception  | 10s | 92M | [predict.py](https://github.com/EN10/KerasInception/blob/master/predict.py) |
| InceptionResNetV2  | 50s  | 215M | [irn2.py](https://github.com/EN10/KerasInception/blob/master/models/irn2.py) |
| NASNetMobile  | 38s  | 24M | see below |
| NASNetLarge  | 5-12m | 344M | [nasnet.py](https://github.com/EN10/KerasInception/blob/master/models/nasnet.py) |

[FloydHub](https://github.com/EN10/FloydHub) increases performance, compiled to use `SSE4.1 SSE4.2 AVX`     
FloydHub NASNetLarge example [run.sh](https://github.com/EN10/KerasInception/blob/master/models/run.sh) runs < 1m:   

    floyd run \
    --data efcic/datasets/nasnet-large/2:models \
    --data efcic/datasets/keras/1:keras \
    --env tensorflow-1.4 \
    "bash run.sh