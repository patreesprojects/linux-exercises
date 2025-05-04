#!/bin/bash

# Create 512MB swap file
sudo fallocate -l 512M /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

# Show memory and swap status
free -h
