#!/bin/sh

MONGO_HOME=/opt/mongodb

if [ !$MONGO_HOME ]; then
    MONGO_HOME=$MONGO_HOME
fi

$MONGO_HOME/bin/mongod --dbpath=$MONGO_HOME/data --logpath=$MONGO_HOME/logs/mongoDB.log --directoryperdb
