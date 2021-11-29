#!/bin/bash
pushd .;
cd /tmp
wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.5153_amd64.deb
sudo dpkg -i teams_1.3.00.5153_amd64.deb
# Prevent teams from coming on during startup
rm ~/.config/autostart/teams.desktop
popd;


