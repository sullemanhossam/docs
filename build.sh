#!/bin/bash

# Install Python dependencies
pip3 install --upgrade pip setuptools wheel
pip3 install -r requirements.txt

# Run Hugo build using npx
npx hugo --minify