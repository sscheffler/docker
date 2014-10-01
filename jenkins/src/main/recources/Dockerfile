FROM ubuntu:precise
FROM martinseeler/oracle-server-jre
FROM sscheffler/tomcat

MAINTAINER Stefan Scheffler

# imstall tomcat
RUN \
  mkdir -p /data/jenkins && \
  cd /tomcat/webapps && \
  wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

# Define default command.
CMD /tomcat/bin/catalina.sh start && sleep 30 && ls -a /root/.jenkins/plugins  && tail -f /tomcat/logs/catalina.out 

EXPOSE 8080
