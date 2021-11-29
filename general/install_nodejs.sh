#!/bin/bash

# Install and update npm
sudo apt install npm
sudo npm install -g npm

# Install nvm
# wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
# nvm install node

# Update node with npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
