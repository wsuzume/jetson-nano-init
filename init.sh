#!bin/bash
sudo apt-get update

# Swap file setting ( default 6GB )
git clone https://github.com/JetsonHacksNano/installSwapfile \
&& cd installSwapfile \
&& ./installSwapfile.sh

# Install Tensorflow and another tools
git clone https://github.com/karaage0703/jetson-nano-tools \
&& cd jetson-nano-tools \
&& ./install-tensorflow.sh \
&& ./install-tools.sh

# Install PyTorch ( from official https://devtalk.nvidia.com/default/topic/1049071/pytorch-for-jetson-nano/ )
wget https://nvidia.box.com/shared/static/mmu3xb3sp4o8qg9tji90kkxl1eijjfc6.whl -O torch-1.1.0-cp36-cp36m-linux_aarch64.whl
pip3 install numpy torch-1.1.0-cp36-cp36m-linux_aarch64.whl
