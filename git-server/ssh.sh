#!/bin/bash

# set up ssh keys
echo -e "\ny\n" | ssh-keygen -t rsa -N ""
mkdir -p ./git-server/ssh_keys
cp ~/.ssh/id_rsa $(pwd)/git-server/ssh_keys/id_rsa
cp ~/.ssh/id_rsa.pub $(pwd)/git-server/ssh_keys/authorized_keys

#https://www.linux.com/learn/how-run-your-own-git-server