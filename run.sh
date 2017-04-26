#!/bin/bash

docker build . -t grip-docker &> /dev/null
docker stop grip-docker &> /dev/null
docker rm grip-docker &> /dev/null
CONTAINER=$(docker run -d -v "$(pwd)":/src --name grip-docker -P grip-docker:latest grip $1 0.0.0.0:8080) &> /dev/null
CONTAINERPORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "8080/tcp") 0).HostPort}}' grip-docker) &> /dev/null
echo "..."
sleep 2 &> /dev/null
open http://localhost:$CONTAINERPORT &> /dev/null