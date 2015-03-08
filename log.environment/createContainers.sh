
if [ $1 ] 
then

echo Stoping containers
docker stop logstash
docker stop kibana
docker stop orientdb

echo Removing containers
docker rm logstash
docker rm kibana
docker rm orientdb

HOME=$1
DATA=/data
CONFIG=$HOME/repository/docker/log.environment/config/orientdb

echo Creating containers
docker create -v $DATA/elasticsearch:/elasticsearch/data -p 9200:9200 -p 127.0.0.1:8000:8000 --name kibana nshou/elasticsearch-kibana
docker create -v $DATA/orientdb/log:/opt/orientdb/log -v $CONFIG:/opt/orientdb/config -v $DATA/orientdb/db:/opt/orientdb/databases -p 2424:2424 -p 2480:2480 --name orientdb sscheffler/orientdb
docker create -v $DATA/logstash/sincedb:/data/since_db  -v $HOME/repository/docker/log.environment/config/logstash:/data/config -v $HOME/temp/logstash/index/:/data/input --name=logstash --link kibana:elastic --link orientdb:orient sscheffler/logstash
else
  echo "HOME not set"
fi
