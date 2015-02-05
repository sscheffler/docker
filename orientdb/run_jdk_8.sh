#!/bin/bash

#VARIABLES
DATA=/data/orientdb
CONFIG=/etc/orientdb/config

#STOP OLD CONTAINER
docker stop orientdb
docker rm orientdb

#RUN CONTAINER
docker build --quiet=false -t=stefanscheffler/orientdb .
docker run -d -v $DATA/log:/opt/orientdb/log -v $CONFIG:/opt/orientdb/config -v $DATA/db:/opt/orientdb/databases -v $DATA/backup:/opt/orientdb/backup -p 2424:2424 -p 2480:2480 --name orientdb stefanscheffler/orientdb
