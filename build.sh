##!/bin/bash
#
## Install Python dependencies
#pip3 install --upgrade pip setuptools wheel
#pip3 install -r requirements.txt
#
## Run Hugo from node_modules
#node_modules/.bin/hugo --minify

#!/bin/bash

# Define the Hugo version
HUGO_VERSION=0.111.2

# Download and install Hugo
curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
tar -xzf /tmp/hugo.tar.gz -C /tmp

# Move Hugo binary to a location in PATH
mv /tmp/hugo /usr/local/bin/hugo

# Verify Hugo installation
hugo version

# Install Python dependencies
pip3 install --upgrade pip setuptools wheel
pip3 install -r requirements.txt

# Build the Hugo site
hugo --minify