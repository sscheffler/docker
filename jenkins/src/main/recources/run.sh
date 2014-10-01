#!/bin/bash

#stop old container
bash stop.sh

#set environment
HOME=/home/sscheffler
M2=.m2/repository

#rebuild and run	 container
sudo docker build -t=local/jenkins .
sudo docker run -d -v $HOME/.jenkins:/root/.jenkins -v $HOME/$M2:/root/$M2 -v $HOME/.repository:/data/repository -p 127.0.0.1:8090:8080 --name jenkins local/jenkins
