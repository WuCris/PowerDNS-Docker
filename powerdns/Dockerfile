FROM alpine:3.19

RUN apk add pdns pdns-backend-mariadb

RUN mkdir /etc/pdns/pdns.d \
   && sed -i 's/#\sinclude-dir=/include-dir=\/etc\/pdns\/pdns.d/g' /etc/pdns/pdns.conf

COPY conf.d/ /etc/pdns/pdns.d/

EXPOSE 8081
CMD [ "pdns_server" ]