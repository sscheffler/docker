FROM stefanscheffler/jdk7

MAINTAINER Stefan Scheffler

# postgresql 9.3


RUN \
    apt-get install postgresql-9.3 -y
USER postgres

RUN    /etc/init.d/postgresql start &&\
    psql --command "CREATE USER ekz WITH SUPERUSER PASSWORD 'ekz2014';" &&\
    createdb -O ekz -T template0 -E UTF8 ekz &&\
    psql ekz --command "CREATE SCHEMA dvb_manage AUTHORIZATION ekz;"
# Adjust PostgreSQL configuration so that remote connections to the
# database are possible.
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf

# And add ``listen_addresses`` to ``/etc/postgresql/9.3/main/postgresql.conf``
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf

# Expose the PostgreSQL port
EXPOSE 5432

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME  ["/etc/postgresql", "/var/log/postgresql", "/var/lib/postgresql"]

# Set the default command to run when starting the container
CMD ["/usr/lib/postgresql/9.3/bin/postgres", "-D", "/var/lib/postgresql/9.3/main", "-c", "config_file=/etc/postgresql/9.3/main/postgresql.conf"]




