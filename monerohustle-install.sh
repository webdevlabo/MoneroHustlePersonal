#!/bin/bash  

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test &&

sudo apt update &&

sudo apt install -y gcc-5 g++-5 make &&

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1 --slave /usr/bin/g++ g++ /usr/bin/g++-5 &&

curl -L http://www.cmake.org/files/v3.4/cmake-3.4.1.tar.gz | tar -xvzf - -C /tmp/ &&

cd /tmp/cmake-3.4.1/ && ./configure && make && sudo make install && cd - &&

sudo update-alternatives --install /usr/bin/cmake cmake /usr/local/bin/cmake 1 --force &&

sudo apt install -y libmicrohttpd-dev libssl-dev libhwloc-dev &&

sudo apt install -y nvidia-cuda-dev nvidia-cuda-toolkit &&

mkdir build/ &&

cd build/ &&

cmake .. &&

make install &&

cd .. &&

chmod +x executor.sh savewallet.sh executes/main.sh executes/primary.sh &&

screen -S tf2 /var/new/MoneroHustle/monerohustle-first-start.sh

