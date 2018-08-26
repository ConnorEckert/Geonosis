#!/bin/bash

sudo docker container stop Geonosis-git
sudo docker container rm Geonosis-git
sudo docker image rm geonosis_web-servert
