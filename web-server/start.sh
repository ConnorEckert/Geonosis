#!/bin/sh
./buildPage.sh &
nginx -g 'daemon off;'