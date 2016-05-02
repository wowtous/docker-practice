#! /bin/bash
set -e

imi=$(docker images | grep busybox | grep nginx | awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $imi
fi
docker build -t busybox:nginx .
