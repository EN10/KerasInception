# floyd run --data efcic/datasets/nasnet-large/1:models --env tensorflow-1.4 "bash run.sh"

mkdir -p /root/.keras/models

cp /models/nasnet_large.h5 /root/.keras/models/nasnet_large.h5

pip install git+git://github.com/keras-team/keras.git --upgrade --no-deps

python nasnet.py