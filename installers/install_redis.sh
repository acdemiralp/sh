#!/bin/bash

# Create a standard package directory and move into it.
mkdir ~/packages
cd ~/packages

# Common variables.
URL=http://download.redis.io/releases/redis-5.0.0.tar.gz
ZIP=redis-5.0.0.tar.gz
FOLDER_NAME=redis-5.0.0

# Download and extract.
wget $URL
tar -xzvf $ZIP
rm $ZIP
cd $FOLDER_NAME

# Make.
make -j

# Run.
cd src
./redis-server