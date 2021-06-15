#!/bin/bash
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next -y
sudo apt update
sudo apt install remmina remmina-plugin-rdp remmina-plugin-secret -y
