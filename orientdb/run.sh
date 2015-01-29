#!/bin/bash

#stop old container
#bash stop.sh

#set environment
#H#OME=/home/sscheffler
#M2=.m2/repository

#rebuild and run	 container
#sudo docker build --quiet=false -t=abiyasa/orientdb-2.0 . 
sudo docker stop orientdb
sudo docker rm orientdb
sudo docker run -d -p 2424:2424 -p 2480:2480 --name orientdb abiyasa/orientdb-2.0
