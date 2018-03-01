#!/usr/bin/env bash

command -v vim &> /dev/null || {
    echo "Update packages"
    sudo apt-get update
    sudo apt-get -y upgrade
    sudo apt-get -y install vim
    
    echo "Installing opencv requires packages"
    sudo apt-get -y install build-essential
    sudo apt-get -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
    sudo apt-get -y install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
    
    echo "Download opencv source code"
    wget https://github.com/opencv/opencv/archive/2.4.13.6.zip
    sudo apt-get -y install zip unzip 
    unzip 2.4.13.6.zip
    cd opencv-2.4.13.6/
    
    echo "Configure opencv"
    mkdir build
    cd build 
    cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
    
    echo "Build opencv"
    make -j
    sudo make install
    
    
}