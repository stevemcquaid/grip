#!/bin/bash

docker build . -t stevemcquaid/grip:latest
docker stop grip
docker rm grip
CONTAINERID=$(docker run -d -v "$(pwd)":/src --name grip -P stevemcquaid/grip:latest grip $1 0.0.0.0:8080)
CONTAINERPORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "8080/tcp") 0).HostPort}}' grip)
echo "..."
sleep 2
open http://localhost:$CONTAINERPORT
