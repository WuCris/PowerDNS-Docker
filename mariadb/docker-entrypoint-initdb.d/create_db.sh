set -e
mariadb -u root -p"$MARIADB_ROOT_PASSWORD" < /etc/default/template/create_db.sql