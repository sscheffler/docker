FROM ubuntu:precise
FROM martinseeler/oracle-server-jre



MAINTAINER Stefan Scheffler

# imstall tomcat
RUN \
  cd /tmp && \
  wget http://www.interior-dsgn.com/apache/tomcat/tomcat-8/v8.0.14/bin/apache-tomcat-8.0.14.tar.gz && \
  tar xvzf apache-tomcat-8.0.14.tar.gz && \
  rm -f apache-tomcat-8.0.14.tar.gz && \
  mv /tmp/apache-tomcat-8.0.14 /tomcat && \
  cd /tomcat/webapps && \
  wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

# Define default command.
CMD /tomcat/bin/catalina.sh start  && tail -f /tomcat/logs/catalina.out

EXPOSE 8080
