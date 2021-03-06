#! /bin/bash
set -e

# wget --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz
imi=$(docker images | grep alpine | grep jre7 | awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $imi
fi
tar zxf apks/jre7.tar.gz -C apks && \
docker build -t alpine:jre7 . && \
rm -rf apks/jre
