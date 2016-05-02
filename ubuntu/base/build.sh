#! /bin/bash

set -e

imi=$(docker images|grep ubuntu|grep base|awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $imi
fi

docker build -t ubuntu:base .
