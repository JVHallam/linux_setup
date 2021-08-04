#!/bin/bash
packages=(
    dotnet-sdk-5.0
)

for package in ${packages[@]}; do
    sudo apt install $package -y
done;
