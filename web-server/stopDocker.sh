#!/bin/bash
sudo docker container stop Geonosis-web
sudo docker container rm Geonosis-web
sudo docker image rm geonosis_web-server

