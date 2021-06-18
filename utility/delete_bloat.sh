#!/bin/bash

echo "----packages-----"
packages=(
	lubuntu-update-notifier
	firefox
)

for package in ${packages[@]}; do
	sudo apt purge $package -y
done;


echo "----grep filters-----"
grepfilters=(
    libreoffice
    trojita
    2048
)

for filter in ${grepfilters[@]};
do
    echo "Filter: $filter"
    dpkg -l | grep "$filter[^\s]*" -ohP | xargs -n1 sudo apt purge -y
done;


#========= When all is said and done =================
echo "----auto remove-----"
sudo apt autoremove -y
