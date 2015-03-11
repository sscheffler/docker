
if [ $1 ] 
then

echo Stoping containers
docker stop logstash
docker stop kibana

echo Removing containers
docker rm logstash
docker rm kibana

HOME=$1
DATA=/data

echo Creating containers
docker create -v $DATA/elasticsearch:/elasticsearch/data -p 9200:9200 -p 127.0.0.1:8000:8000 --name kibana nshou/elasticsearch-kibana
docker create -v $DATA/logstash/sincedb:/data/since_db  -v $HOME/repository/docker/log.environment/config/logstash:/data/config -v $HOME/temp/logstash/index/:/data/input --name=logstash --link kibana:elastic sscheffler/logstash
else
  echo "HOME not set"
fi
