# floyd run --data efcic/datasets/nasnet-large/2:models --data efcic/datasets/keras/1:keras --env tensorflow-1.4 "bash run.sh"

# Setup NASnet Model & Keras
mkdir -p /root/.keras/models
cp /models/nasnet_large.h5 /root/.keras/models/nasnet_large.h5
cp /models/imagenet_class_index.json /root/.keras/models/imagenet_class_index.json

# Install Keras 2.1.2
mkdir -p /keras-git
cp -a /keras/. /keras-git/
cd /keras-git
sudo pip install -e . --upgrade --no-deps
pip show keras

# Run NASnet
cd /code
python nasnet.py