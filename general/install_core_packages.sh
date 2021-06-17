#!/bin/bash
packages=(
    curl
    htop
    nethogs
    vim-gtk
    nvidia-settings
)

for package in ${packages[@]}; do
    sudo apt install $package -y
done;
