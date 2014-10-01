FROM ubuntu:precise
FROM martinseeler/oracle-server-jre

MAINTAINER Stefan Scheffler

# imstall tomcat
RUN \
  cd /tmp && \
  wget http://www.interior-dsgn.com/apache/tomcat/tomcat-8/v8.0.14/bin/apache-tomcat-8.0.14.tar.gz && \
  tar xvzf apache-tomcat-8.0.14.tar.gz && \
  rm -f apache-tomcat-8.0.14.tar.gz && \
  mv /tmp/apache-tomcat-8.0.14 /tomcat

RUN \
  apt-get update -y && \
  apt-get install maven git openjdk-7-jdk -y
