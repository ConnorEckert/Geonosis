#!/bin/bash
echo "STARTING GEONOSIS"
echo "this make take a minute..."
echo " > creating ssh keys"
./git-server/ssh.sh > /dev/null 2>&1
echo " > keys created"
echo " > building images"
sudo docker-compose build > /dev/null 2>&1
echo " > images built"
echo " > running containers"
sudo docker-compose up -d 
echo " > containers built"
echo " > cloning repo"
./git-server/createRepo.sh > /dev/null 2>&1
echo " > repo cloned"
