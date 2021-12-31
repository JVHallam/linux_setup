#!/bin/bash

confFilePath="/etc/modprobe.d/blacklist.conf"
hypervBlacklistString="blacklist hyperv_fb"

sudo apt update && sudo apt upgrade

# Fix the display
## Make it not laggy
sudo grep -q "$hypervBlacklistString" $confFilePath

#If we don't find it
if [ $? -eq 1 ]
then
    sudo echo "blacklist hyperv_fb" | sudo tee -a /etc/modprobe.d/blacklist.conf
else
    echo "Hyper V already blacklisted"
fi

# Fix the install
# I don't know if this is needed
sudo apt install open-vm-tools open-vm-tools-desktop -y
