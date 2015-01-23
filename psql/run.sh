#!/bin/bash
bash stop.sh

sudo docker build -t=stefanscheffler/psql .
sudo docker run -d -p 5432:5432 --name psql stefanscheffler/psql
