#!/bin/sh
$TEMP_SQL=/tmp/initialize.sql

wget -O $TEMP_SQL https://raw.githubusercontent.com/supersonictw/popcat-echo/main/initialize.sql
mysql -u $MARIADB_USER -p $MARIADB_PASS $MARIADB_DATABASE <$TEMP_SQL
rm $TEMP_SQL
