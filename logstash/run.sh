docker stop logstash
docker rm logstash
HOME=/home/sscheffler



docker run -d -v $HOME/repository/docker/logstash/config:/data/config -v $HOME/temp/logstash/index/:/data/input --name=logstash --link kibana:elastic --link orientdb:orient sscheffler/logstash
