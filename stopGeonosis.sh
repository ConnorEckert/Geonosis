#!/bin/bash
echo "STOPPING GEONOSIS"
echo "> stopping git-server"
./git-server/stopDocker.sh > /dev/null 2>&1
echo "> git-server stopped"

echo "> stopping web-server"
./web-server/stopDocker.sh > /dev/null 2>&1
echo "> web-server stopped"
echo "> removing repo"
rm -rf admin
echo "> repo removed"


