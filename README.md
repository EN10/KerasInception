## Install

    sudo apt update  
    sudo pip install -U pip  
    sudo pip install numpy pbr protobuf h5py pillow
    sudo pip install --upgrade https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.1.0-cp27-none-linux_x86_64.whl  

disable "cpu_feature_guard":  
`export TF_CPP_MIN_LOG_LEVEL=2`