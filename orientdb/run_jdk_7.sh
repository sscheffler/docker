#!/bin/bash

#VARIABLES
DATA=/data/orientdb
CONFIG=/etc/orientdb/config

#STOP OLD CONTAINER
sudo docker stop orientdb
sudo docker rm orientdb

#RUN CONTAINER
sudo docker run -d -v $DATA/log:/opt/orientdb/log -v $CONFIG:/opt/orientdb/config -v $DATA/db:/opt/orientdb/databases -v $DATA/backup:/opt/orientdb/backup -p 2424:2424 -p 2480:2480 --name orientdb abiyasa/orientdb-2.0
