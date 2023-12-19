FROM mariadb:11.2

RUN mkdir -p /etc/default/template/

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
COPY init_db.sql /etc/default/template/
