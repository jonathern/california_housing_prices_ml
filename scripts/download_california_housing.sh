#!/bin/bash

# Script: download_california_housing.sh
# Purpose: Download the California Housing Prices dataset from Kaggle
# Output: Saves raw dataset into /data/raw/

# Ensure target directory exists
mkdir -p /data/raw/

# Download dataset zip file into /data/raw/
curl -L -o /data/raw/california-housing-prices.zip \
  https://www.kaggle.com/api/v1/datasets/download/camnugent/california-housing-prices

# Unzip dataset into /data/raw/ (overwrite existing files if present)
unzip -o /data/raw/california-housing-prices.zip -d /data/raw/

# Print completion message
echo "California Housing Prices dataset downloaded and extracted to /data/raw/"
