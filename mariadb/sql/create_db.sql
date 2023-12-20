
--do env envsubst < thisfile.sql for ${MARIADB_USER}--
CREATE database powerdns_admin;
GRANT ALL PRIVILEGES ON powerdns_admin.* TO 'powerdns'@'%';