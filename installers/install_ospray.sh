#!/bin/bash

# Create a standard package directory and move into it.
mkdir ~/packages
cd ~/packages

# Common variables.
URL=https://github.com/ospray/ospray/archive/v1.7.3.tar.gz
ZIP=v1.7.3.tar.gz
FOLDER_NAME=ospray-1.7.3

# Download and extract.
wget $URL
tar -xzvf $ZIP
rm $ZIP
cd $FOLDER_NAME

# Load dependencies.
module load ispc
module load tbb

# CMake.
module load CMake
mkdir build
cd build
cmake -Dembree_DIR=~/packages/embree-3.5.2/build ..

# Make.
make -j
