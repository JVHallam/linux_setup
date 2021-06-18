#!/bin/bash

ssh-keygen -t rsa -b 4096 -C "jakehallam95@gmail.com"

eval $(ssh-agent -s)

ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub | xclip -selection c

git remote set-url origin git@github.com:jvhallam/linux_setup.git

echo "Public key added to clipboard!"

