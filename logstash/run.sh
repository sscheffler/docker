docker run -d -v /home/sscheffler/temp/logstash/index/:/data/input --name=logstash --link kibana:el --link orientdb:orient stefanscheffler/logstash
