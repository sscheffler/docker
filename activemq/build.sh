docker stop activemq
docker rm activemq
docker build -t=sscheffler/activemq --quiet=false -rm=true .

