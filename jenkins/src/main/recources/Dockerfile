FROM stefanscheffler/tomcat

MAINTAINER Stefan Scheffler

# install jenkins
RUN \
  mkdir -p /data/jenkins && \
  mkdir -p /data/repository && \
  cd /tomcat/webapps && \
  wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

# Define default command.
CMD /tomcat/bin/catalina.sh start && tail -f /tomcat/logs/catalina.out 

EXPOSE 8080
