FROM stefanscheffler/jdk8

MAINTAINER Stefan Scheffler

WORKDIR /data

RUN 	cd /opt/ && \
	wget https://download.elasticsearch.org/logstash/logstash/logstash-1.4.2.tar.gz && \
	tar -xzf logstash-1.4.2.tar.gz && \
	mv logstash-1.4.2 logstash && \
	rm logstash-1.4.2.tar.gz

RUN	mkdir -p /data/config &&\
	mkdir -p  /data/input

ADD ccp-request.conf /data/config/config.conf

ENV ABC=abc

CMD ["/opt/logstash/bin/logstash","agent","-f","/data/config/config.conf]
