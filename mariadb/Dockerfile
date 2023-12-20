FROM mariadb:11.2

RUN mkdir -p /etc/default/template/

COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d
COPY sql/ /etc/default/template/

RUN chmod -R 555 /docker-entrypoint-initdb.d
