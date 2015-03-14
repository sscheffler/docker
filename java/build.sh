#!/bin/bash

#rebuild and run	 container
 docker build --quiet=false --force-rm=true -t=stefanscheffler/jdk .
