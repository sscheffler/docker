
FROM ubuntu:latest

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

RUN apt-get update
RUN apt-get install -y wget tar

ENV JDK8=jdk-8u31-linux-x64
ENV JDK8_FOLDER=jdk1.8.0_31
ENV JDK7=jdk-7u75-linux-x64
# http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-x64.tar.gz

# DOWNLOAD / EXTRACT / RENAME - JDK 8
RUN cd /opt/ && \ 
	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/$JDK8.tar.gz && \
	tar -xzf $JDK8.tar.gz  && \
	rm -f $JDK8.tar.gz && \
	mv $JDK8_FOLDER jdk8
