#!/bin/bash

#stop old container
#bash stop.sh

#set environment
#H#OME=/home/sscheffler
#M2=.m2/repository

#rebuild and run	 container
sudo docker build --quiet=false -t=stefanscheffler/orientdb . 
sudo docker run -d --name orientdb stefanscheffler/orientdb
