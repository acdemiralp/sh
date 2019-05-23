#!/bin/bash

# Create a standard package directory and move into it.
mkdir ~/packages
cd ~/packages

# Common variables.
URL=https://github.com/protocolbuffers/protobuf/releases/download/v3.8.0-rc1/protobuf-all-3.8.0-rc-1.tar.gz
ZIP=protobuf-all-3.8.0-rc-1.tar.gz
ORIGINAL_FOLDER_NAME=protobuf-3.8.0-rc-1
FOLDER_NAME=protobuf-3.8.0

# Download and extract.
wget $URL
tar -xzvf $ZIP
rm $ZIP
mv $ORIGINAL_FOLDER_NAME $FOLDER_NAME
cd $FOLDER_NAME

# CMake.
module load CMake
mkdir build
cd build
cmake ../cmake

# Make.
make -j