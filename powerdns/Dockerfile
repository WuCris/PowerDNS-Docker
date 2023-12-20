FROM alpine:3.18

RUN apk add pdns pdns-backend-mysql

RUN mkdir /etc/pdns/pdns.d \
   && sed -i 's/#\sinclude-dir=/include-dir=\/etc\/pdns\/pdns.d/g' /etc/pdns/pdns.conf

COPY mariadb.conf /etc/pdns/pdns.conf

CMD [ "pdns_server" ]