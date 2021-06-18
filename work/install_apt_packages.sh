#!/bin/bash
packages=(
    dotnet-sdk-3.1
)

for package in ${packages[@]}; do
    sudo apt install $package -y
done;
