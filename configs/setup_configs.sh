#!/bin/bash

# Add a symlink, to this .vimrc file, in the $VIM folder
rcFiles=(
    .vimrc
    .bashrc
)

for rc in ${rcFiles[@]}; do
    rm ~/$rc -f
    ln -s "$(pwd)/$rc" ~/$rc
done;

git config --global credential.helper cache
