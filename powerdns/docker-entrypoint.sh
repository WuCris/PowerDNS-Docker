#!/bin/sh

set -e
envsubst < /etc/pdns/pdns.d/mariadb.conf >> /etc/pdns/pdns.d/mariadb.conf

exec "$@"