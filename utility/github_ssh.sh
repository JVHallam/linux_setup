#!/bin/bash
ssh-keygen -t rsa -b 4096 -C "jakehallam95@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub | xclip -selection c
echo "NOW, go and add that key to github"
echo "key added to clipboard"
