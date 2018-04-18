#!/bin/bash

name="grip"

CONTAINERID=$(docker run -d -P -v "$(pwd)":/src  --rm stevemcquaid/grip:latest grip $1 0.0.0.0:8080)
CONTAINERPORT=$(docker inspect --format='{{(index (index .NetworkSettings.Ports "8080/tcp") 0).HostPort}}' $CONTAINERID)
echo "..."
sleep 2
echo "open http://localhost:$CONTAINERPORT"