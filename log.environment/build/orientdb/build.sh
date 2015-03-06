#!/bin/bash

#VARIABLES
DATA=/data/orientdb
CONFIG=/etc/orientdb/config

#STOP OLD CONTAINER
docker stop orientdb
docker rm orientdb

#RUN CONTAINER
docker build --quiet=false -t=sscheffler/orientdb -rm=true .
