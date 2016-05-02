#! /bin/bash
set -e

vs="2.6.8"
# vs="3.2.0"
df=Dockerfile-$vs

imi=$(docker images | grep mongodb | grep $vs | awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $imi
fi
docker build -f $df -t mongodb:$vs .
