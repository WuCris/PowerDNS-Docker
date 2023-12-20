FROM alpine:3.19

RUN apk add pdns pdns-backend-mariadb envsubst

RUN mkdir /etc/pdns/pdns.d \
   && sed -i 's/#\sinclude-dir=/include-dir=\/etc\/pdns\/pdns.d/g' /etc/pdns/pdns.conf

COPY conf.d/ /etc/pdns/pdns.d/
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 555 /docker-entrypoint.sh

EXPOSE 8081

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["pdns_server"]
