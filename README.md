# Inception Keras

[Inception-v3](https://www.tensorflow.org/tutorials/image_recognition) is a trained image recognition model for tensorflow.  
It was trained on 1.2 million images from [ImageNet](http://image-net.org/challenges/LSVRC/2012/index#introduction) to detect [1000 classes](http://image-net.org/challenges/LSVRC/2012/browse-synsets) (or labels for the images).  
It took [8 NVIDIA Tesla K40s, 2 weeks](https://research.googleblog.com/2016/03/train-your-own-image-classifier-with.html) to train.

Keras allows you to use this model with less code.  

This example was built and tested on c9.io or cs50.io as they provide a free Ubuntu VM (docker container) with 512MB RAM and 2GB Disk.

## Install

    sudo pip install -U pip  
    sudo pip install tensorflow keras 
    sudo pip install h5py pillow  

disable "cpu_feature_guard":  
`export TF_CPP_MIN_LOG_LEVEL=2`