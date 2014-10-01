#!/bin/bash

bash stop.sh

sudo docker build -t=local/jenkins .
sudo docker run -d -v /home/sscheffler/.jenkins/jobs:/root/.jenkins/jobs -v /home/sscheffler/.jenkins/plugins:/root/.jenkins/plugins -p 127.0.0.1:8090:8080 --name jenkins local/jenkins
