#!/bin/bash
packages=(
    curl
    htop
    nethogs
    vim-gtk
    nvidia-settings
    jq
)

for package in ${packages[@]}; do
    sudo apt install $package -y
done;

snap_packages=(
    docker
)

for package in ${snap_packages[@]}; do
    sudo apt install $package -y
done;
