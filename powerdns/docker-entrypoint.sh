#!/bin/sh

set -e
envsubst < /etc/default/template/pdns.d/mariadb.conf > /etc/pdns/pdns.d/mariadb.conf
envsubst < /etc/default/template/pdns.d/api.conf > /etc/pdns/pdns.d/api.conf

exec "$@"