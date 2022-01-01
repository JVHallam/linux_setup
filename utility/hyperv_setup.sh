#!/bin/bash

sudo apt update && sudo apt upgrade

# Adding in the 1920x1080 process
grubConfPath="/etc/default/grub"

# hyperv-drivers?
sudo apt-get install linux-image-extra-virtual

# Fix the install
# I don't know if this is needed
sudo apt install open-vm-tools open-vm-tools-desktop -y
