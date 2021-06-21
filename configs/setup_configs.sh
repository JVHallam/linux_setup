#!/bin/bash

# Add a symlink, to this .vimrc file, in the $VIM folder
rcFiles=(
    .vimrc
    .bashrc
    .terraformrc
)

for rc in ${rcFiles[@]}; do
    rm ~/$rc -f
    ln -s "$(pwd)/$rc" ~/$rc
done;

git config --global credential.helper cache
mkdir "$HOME/.terraform.d/plugin-cache" -p
