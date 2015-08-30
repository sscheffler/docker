docker stop activemq
docker rm activemq

docker run \
	-td \
	-p 127.0.0.1:8161:8161 \
	-p 127.0.0.1:61616:61616 \
	 --name=activemq \
	sscheffler/activemq