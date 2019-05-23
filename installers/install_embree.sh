#!/bin/bash

# Create a standard package directory and move into it.
mkdir ~/packages
cd ~/packages

# Common variables.
URL=https://github.com/embree/embree/archive/v3.5.2.tar.gz
ZIP=v3.5.2.tar.gz
FOLDER_NAME=embree-3.5.2

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
cmake -DEMBREE_TUTORIALS=OFF ..

# Make.
make -j