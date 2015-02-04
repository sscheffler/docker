
FROM ubuntu:latest

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

RUN apt-get update
RUN apt-get install -y wget tar

#download jdk
RUN cd /opt/ && \ 
	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/jdk-8u31-linux-x64.tar.gz && \
	tar -xzf jdk-8u31-linux-x64.tar.gz

ENV JAVA_HOME /opt/jdk1.8.0_31
