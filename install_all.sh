#!/bin/bash

pushd .;
cd general;
echo "Current: General"
sudo run-parts . --regex ".*\.sh"
popd;

pushd .;
cd work;
echo "Current: Work"
sudo run-parts . --regex ".*\.sh"
popd;


pushd .;
cd configs;
echo "Current: Configs"
sudo run-parts . --regex ".*\.sh"
popd;
