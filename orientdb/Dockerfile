############################################################
# Dockerfile to run an OrientDB (Graph) Container
# http://crosbymichael.com/dockerfile-best-practices.html
# http://crosbymichael.com/dockerfile-best-practices-take-2.html
############################################################

FROM stefanscheffler/jdk8

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

# Update the default application repository sources list
RUN apt-get update

# Install supervisord
RUN apt-get -y install supervisor
RUN mkdir -p /var/log/supervisor
	

RUN apt-get -y install git ant maven

ENV ORIENTDB_VERSION 2.0.1
ENV JAVA_HOME /opt/jdk1.8.0_31

# Build OrientDB cleaning up afterwards
RUN cd && \
    git clone https://github.com/orientechnologies/orientdb.git --single-branch --depth 1 --branch $ORIENTDB_VERSION
RUN cd orientdb && \ 
    ant clean installg 
RUN mv /releases/orientdb-community-* /opt/orientdb && \
    rm -rf /opt/orientdb/databases/* ~/orientdb

# use supervisord to start orientdb
#ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 2424
EXPOSE 2480

# Set the user to run OrientDB daemon
USER root

# Default command when starting the container
# needs to run with supervisor 
CMD ["/opt/orientdb/bin/server.sh"]
