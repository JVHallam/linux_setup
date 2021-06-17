#!/bin/bash
ssh-keygen -t ed25519 -C "jakehallam95@gmail.com"

eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub | xclip -selection c
echo "NOW, go and add that key to github"
echo "key added to clipboard"
