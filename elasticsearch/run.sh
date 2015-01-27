sh stop.sh
docker run -d -v /data:/elasticsearch/data -p 127.0.0.1:8000:8000 -p 127.0.0.1:9300:9300 -p 127.0.0.1:9200:9200  --name kibana nshou/elasticsearch-kibana 

