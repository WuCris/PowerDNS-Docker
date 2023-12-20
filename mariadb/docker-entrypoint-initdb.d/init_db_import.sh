#!/bin/sh
set -e
mariadb -u"$MARIADB_USER" -p"$MARIADB_PASSWORD" "$MARIADB_DATABASE" < /etc/default/template/init_db.sql