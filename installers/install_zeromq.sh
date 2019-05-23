#!/bin/bash

# Create a standard package directory and move into it.
mkdir ~/packages
cd ~/packages

# Common variables.
URL=https://github.com/zeromq/libzmq/releases/download/v4.3.1/zeromq-4.3.1.tar.gz
ZIP=zeromq-4.3.1.tar.gz
FOLDER_NAME=zeromq-4.3.1

# Download and extract.
wget $URL
tar -xzvf $ZIP
rm $ZIP
cd $FOLDER_NAME

# CMake.
module load CMake
mkdir build
cd build
cmake ..

# Make.
make -j