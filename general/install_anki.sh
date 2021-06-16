#!/bin/bash

ankiVersion="2.1.44"
ankiString="anki-$ankiVersion"
ankiOutput="anki.tar.bz2"

pushd .;
cd /tmp;
# wget https://github.com/ankitects/anki/releases/download/$ankiVersion/$ankiString-linux.tar.bz2 -O $ankiOutput;
tar xjf "$ankiOutput";
cd "$ankiString-linux"
sudo ./install.sh;
popd;
