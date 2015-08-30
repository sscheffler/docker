
FROM ubuntu:latest

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

RUN apt-get update
RUN apt-get install -y wget tar

ENV JDK8=jdk-8u31-linux-x64
ENV JDK8_FOLDER=jdk1.8.0_31

ENV JDK7=jdk-7u75-linux-x64
ENV JDK7_FOLDER=jdk1.7.0_75

# http://download.oracle.com/otn-pub/java/jdk/7u75-b13/jdk-7u75-linux-x64.tar.gz

# DOWNLOAD / EXTRACT / RENAME - JDK 8
RUN cd /opt/ && \ 
	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u31-b13/$JDK8.tar.gz && \
	tar -xzf $JDK8.tar.gz  && \
	rm -f $JDK8.tar.gz && \
	mv $JDK8_FOLDER jdk8

# DOWNLOAD / EXTRACT / RENAME - JDK 7
RUN cd /opt/ && \
        wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u75-b13/$JDK7.tar.gz && \
        tar -xzf $JDK7.tar.gz  && \
        rm -f $JDK7.tar.gz && \
        mv $JDK7_FOLDER jdk7

#UPDATE ALTERNATIVES FOR JDK8
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk8/bin/java" 0 &&\
	update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk8/bin/javac" 0 &&\
	update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/jdk8/bin/javaws" 0 &&\
	update-alternatives --install "/usr/bin/jar" "jar" "/opt/jdk8/bin/jar" 0

#UPDATE ALTERNATIVES FOR JDK7
RUN update-alternatives --install "/usr/bin/java" "java" "/opt/jdk7/bin/java" 10 &&\
        update-alternatives --install "/usr/bin/javac" "javac" "/opt/jdk7/bin/javac" 10 &&\
        update-alternatives --install "/usr/bin/javaws" "javaws" "/opt/jdk7/bin/javaws" 10 &&\
        update-alternatives --install "/usr/bin/jar" "jar" "/opt/jdk7/bin/jar" 10


