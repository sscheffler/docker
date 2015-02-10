sh stop.sh
docker run -d -v /data:/elasticsearch/data -p 9200:9200 -p 127.0.0.1:8000:8000 --name kibana nshou/elasticsearch-kibana 

