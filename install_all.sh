#!/bin/bash

order=(
   configs
   general
   work
)

for dir in ${order[@]}; do
    pushd .;
    cd $dir
    sudo run-parts . --regex ".*\.sh"
    popd;
done;
