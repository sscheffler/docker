FROM sscheffler/jdk

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

WORKDIR /data

# ENVIRONMENT VARIABLES
ENV JAVA_HOME=/opt/jdk7

RUN cd /opt &&\
	wget http://archive.apache.org/dist/activemq/apache-activemq/5.7.0/apache-activemq-5.7.0-bin.tar.gz &&\
	tar -xzf apache-activemq-5.7.0-bin.tar.gz &&\
	mv apache-activemq-5.7.0 activemq &&\
	rm apache-activemq-5.7.0-bin.tar.gz

EXPOSE 8161

CMD ["/bin/sh","/opt/activemq/bin/activemq","console"]
