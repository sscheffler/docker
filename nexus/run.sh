#!/bin/bash

#stop old container
bash stop.sh

#set environment

#rebuild and run	 container
#docker pull sonatype/nexus
docker run -d -p 127.0.0.1:8081:8081 --name nexus sonatype/nexus
