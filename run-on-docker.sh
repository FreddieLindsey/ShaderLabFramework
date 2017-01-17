#!/bin/bash

open -a XQuartz

IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost -
xhost + "$IP"

if [ $# -gt "0" ]; then
  docker-compose -f docker/docker-compose.develop.yml up -d --build
else
  docker-compose -f docker/docker-compose.yml up -d
fi
