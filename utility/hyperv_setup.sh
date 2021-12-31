#!/bin/bash

confFilePath="/etc/modprobe.d/blacklist.conf"
hypervBlacklistString="blacklist hyperv_fb"

# sudo apt update && sudo apt upgrade

# Fix the display

# Make it not laggy
sudo grep -q "$hypervBlacklistString" $confFilePath

#If we don't find it
if [ $? -eq 1 ]
then
    sudo echo "blacklist hyperv_fb" >> /etc/modprobe.d/blacklist.conf
else
    echo "Hyper V already blacklisted"
fi


# Fix the install
# sudo apt install open-vm-tools open-vm-tools-desktop -y
