#!/bin/bash

# Define the Hugo version
HUGO_VERSION=0.111.2

# Install Node.js dependencies
echo "Installing Node.js dependencies..."
npm install

# Download and install Hugo
echo "Downloading and installing Hugo..."
curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz
tar -xzf /tmp/hugo.tar.gz -C /tmp
mv /tmp/hugo /usr/local/bin/hugo

# Verify Hugo installation
echo "Verifying Hugo installation..."
hugo version

# Install Python dependencies
echo "Installing Python dependencies..."
pip3 install --upgrade pip setuptools wheel
pip3 install -r requirements.txt

# Build the Hugo site
echo "Building the Hugo site..."
hugo --minify -d dist

echo "Setup complete!"