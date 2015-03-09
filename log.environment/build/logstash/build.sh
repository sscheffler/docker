docker stop logstash
docker rm logstash
docker build -t=sscheffler/logstash -rm=true .

