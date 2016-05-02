## Copy the missing file
Before build a mongodb docker image,you should copy your the path <MONGODB_HOME/bin/mongod> <br>
of your mongodb to the inconsistent path like:<br>

```sh
cp <MONGODB_HOME/bin/mongod mongodb-2.6.8/bin
```

## Build image
```sh
#! /bin/bash
set -e

vs="2.6.8"
df=Dockerfile-$vs

imi=$(docker images | grep mongodb | grep $vs | awk '{print $3}')
if [ $imi ]; then
    docker rmi -f $imi
fi
docker build -f $df -t mongodb:$vs .
```

## Running
```sh
docker run -idt --hostname mongodb.server.com --name mongodb mongodb:2.6.8
mongo --host $(docker inspect -f {{.NetworkSettings.IPAddress}} mongodb) --port 27017
```
