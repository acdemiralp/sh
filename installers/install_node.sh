#!/bin/bash

# Create a standard package directory and move into it.
mkdir ~/packages
cd ~/packages

# Common variables.
URL=https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz
ZIP=node-v10.15.3-linux-x64.tar.xz
ORIGINAL_FOLDER_NAME=node-v10.15.3-linux-x64
FOLDER_NAME=node-10.15.3

# Download and extract.
wget $URL
tar -xf $ZIP
rm $ZIP
mv $ORIGINAL_FOLDER_NAME $FOLDER_NAME
