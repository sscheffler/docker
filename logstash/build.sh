#!/bin/bash
docker stop logstash
docker rm logstash
docker build -t=stefanscheffler/logstash .

