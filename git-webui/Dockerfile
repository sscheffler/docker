FROM sscheffler/jdk

MAINTAINER Stefan Scheffler (stefan-scheffler@web.de)

# Update the default application repository sources list
RUN apt-get update

RUN apt-get -y install git
RUN	cd /opt &&\
		git clone git clone https://github.com/alberthier/git-webui.git webui

CMD ["/opt/orientdb/bin/server.sh"]
