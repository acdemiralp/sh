#!/bin/bash

# Create a standard package directory and move into it.
mkdir ~/packages
cd ~/packages

# Common variables.
URL=https://netix.dl.sourceforge.net/project/ispcmirror/v1.11.0/ispc-v1.11.0-linux.tar.gz
ZIP=ispc-v1.11.0-linux.tar.gz
ORIGINAL_FOLDER_NAME=ispc-v1.11.0-linux
FOLDER_NAME=ispc-1.11.0

# Download and extract.
wget $URL
tar -xzvf $ZIP
rm $ZIP
mv $ORIGINAL_FOLDER_NAME $FOLDER_NAME
