
FROM sscheffler/jdk

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

run wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add - && \
    echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list && \
    apt-get update ; apt-get install neo4j -y

ENV NEO4J_HOME=/var/lib/neo4j
ADD sources/run.sh /
ADD sources/neo4j-server.properties $NEO4J_HOME/conf/


run chmod +x /run.sh && \
    apt-get clean && \
    sed -i "s|#node_auto_indexing|node_auto_indexing|g" $NEO4J_HOME/conf/neo4j.properties && \
    sed -i "s|#node_keys_indexable|node_keys_indexable|g" $NEO4J_HOME/conf/neo4j.properties && \ 
    echo "remote_shell_host=0.0.0.0" >> $NEO4J_HOME/conf/neo4j.properties

# expose REST and shell server ports
expose 7474
expose 1337

workdir /

## entrypoint
cmd ["/bin/bash", "-c", "/run.sh"]
