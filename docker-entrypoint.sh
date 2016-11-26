#!/bin/sh

# Datenbank anlegen
mysqladmin -u root --password=my-secret-pw -h $MYSQL_PORT_3306_TCP_ADDR create tpcc3000

# tpcc-load ausführen
./tpcc_load -h $MYSQL_PORT_3306_TCP_ADDR -d tpcc3000 -u root -p "my-secret-pw" -w 10
