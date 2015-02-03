#!/bin/bash

#stop old container
bash docker rm jdk8

#set environment
HOME=/home/sscheffler
M2=.m2/repository

#rebuild and run	 container
 docker build --quiet=false -t=stefanscheffler/jdk8 .
# docker run -d -v $HOME/tmp:/tmp -v $HOME/.jenkins:/root/.jenkins -v $HOME/$M2:/root/$M2 -v $HOME/.repository:/data/repository -p 127.0.0.1:8090:8080 --name jenkins stefanscheffler/jenkins
