#!/bin/bash

bash stop.sh

sudo docker build -t=local/jenkins .
sudo docker run -d -v /home/sscheffler/.jenkins:/root/.jenkins -p 127.0.0.1:8090:8080 --name jenkins local/jenkins
