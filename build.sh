#!/bin/bash

# Install Python dependencies
pip3 install --upgrade pip setuptools wheel
pip3 install -r requirements.txt

# Run Hugo from node_modules
node_modules/.bin/hugo --minify