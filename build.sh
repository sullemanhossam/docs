#!/bin/bash

# Install Hugo
HUGO_VERSION=0.111.2
ARCH=amd
wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${ARCH}64.deb
dpkg -i /tmp/hugo.deb

# Install Python dependencies
python3 -m pip install --upgrade pip setuptools wheel
pip3 install -r requirements.txt

# Build the Hugo project
hugo --minify