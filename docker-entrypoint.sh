#!/bin/sh

# Test - welcher Nutzer ?
whoami

# Datenbank anlegen
echo "Anlegen der Datenbank"
mysqladmin -u root --password=my-secret-pw -h $MYSQL_PORT_3306_TCP_ADDR create tpcc3000
echo "Datenbank wurde angelegt"

# Laden der Struktur
echo "Laden des Metaschema"
mysql -u root --password=my-secret-pw -h $MYSQL_PORT_3306_TCP_ADDR -D tpcc3000 < /home/root/tpcc-mysql/create_table.sql
echo "Metaschema wurde geladen"

# tpcc-load ausführen
echo "Daten werden geladen"
/home/root/tpcc-mysql/tpcc_load -h $MYSQL_PORT_3306_TCP_ADDR -d tpcc3000 -u root -p "my-secret-pw" -w 10
echo "Daten wurden geladen"
