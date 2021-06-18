#!/bin/bash

packages=(
	lubuntu-update-notifier
)

for package in ${packages[@]}; do
	sudo apt purge $package -y
done;
