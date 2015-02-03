#!/bin/bash

#stop old container
bash docker stop jdk8
bash docker rm jdk8

#set environment
HOME=/home/sscheffler
M2=.m2/repository

#rebuild and run	 container
 docker build --quiet=false -t=stefanscheffler/jdk8 .
 docker run -d  --name jdk8 stefanscheffler/jdk8
