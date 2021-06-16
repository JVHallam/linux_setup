#!/bin/bash

# Add a symlink, to this .vimrc file, in the $VIM folder
rm ~/.vimrc -f
ln -s "$(pwd)/.vimrc" ~/.vimrc
git config --global credential.helper cache
cp picom.conf /home/jake/.config


# Set the mouse sensitivity
mouseid="$(xinput | grep MOUSE | grep id=[0-9]* -oh | grep [0-9]* -oh)"
xinput set-prop $mouseid 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0.85
