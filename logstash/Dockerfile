FROM java:8

MAINTAINER Stefan Scheffler

WORKDIR /data

RUN 	cd /opt/ && \
	wget https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \
	tar -xzf logstash-1.4.2.tar.gz && \
	mv logstash-1.4.2 logstash && \
	rm logstash-1.4.2.tar.gz

RUN	mkdir -p /data/config/patterns &&\
	mkdir -p  /data/input

ADD request.conf /data/config/config.conf
ADD patterns /data/config/patterns/

ENV ABC=abc
ENV JAVA_JOME=/opt/jdk1.8.0_31/

CMD ["/opt/logstash/bin/logstash","agent","-f","/data/config/config.conf]
