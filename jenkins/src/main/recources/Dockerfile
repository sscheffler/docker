FROM ubuntu:precise
FROM martinseeler/oracle-server-jre
FROM sscheffler/tomcat

MAINTAINER Stefan Scheffler

#env
DATA=/data 

# imstall tomcat
RUN \
  mkdir -p $DATA/jenkins && \
  mkdir -p $DATA/repository && \
  cd /tomcat/webapps && \
  wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

# Define default command.
CMD /tomcat/bin/catalina.sh start && tail -f /tomcat/logs/catalina.out 

EXPOSE 8080
