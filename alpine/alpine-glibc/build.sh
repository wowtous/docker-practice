#! /bin/bash
set -e

imi=$(docker images | grep alpine | grep glibc | awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $imi
fi
docker build -t alpine:glibc .
