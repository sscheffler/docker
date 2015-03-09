FROM java:8

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

WORKDIR /data

ENV KARAF_VERSION 4.0.0.M2

# Download Karaf
 RUN 	cd /opt/ && \
	wget http://psg.mtu.edu/pub/apache/karaf/4.0.0.M2/apache-karaf-4.0.0.M2.tar.gz && \
	tar -xzf apache-karaf-4.0.0.M2.tar.gz && \
	mv apache-karaf-4.0.0.M2 karaf && \
	rm apache-karaf-4.0.0.M2.tar.gz

 # RUN	mkdir -p /data/config/patterns && \
#	mkdir -p  /data/input && \
#	mkdir /data/since_db && \
#	mkdir /data/logs
#
ENV JAVA_JOME=/opt/jdk1.8.0_31/

# CMD ["/opt/logstash/bin/logstash","agent","-f","/data/config/config.conf"]
