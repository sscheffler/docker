
FROM ubuntu:latest

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

RUN apt-get update
RUN apt-get install -y wget tar

ENV JDK8=jdk-8u31-linux-x64

#download jdk8
RUN cd /opt/ && \ 
	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/$JDK8.tar.gz && \
	tar -xzf $JDK8.tar.gz && \
	mv $JDK jdk8
