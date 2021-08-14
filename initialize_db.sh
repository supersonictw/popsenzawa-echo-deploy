#!/bin/sh
TEMP_SQL=/tmp/initialize.sql

## cURL required
if ! command -v curl &>/dev/null; then
    apt-get update
    apt-get install -y curl
fi

## Start
curl https://raw.githubusercontent.com/supersonictw/popcat-echo/main/initialize.sql -o $TEMP_SQL
mysql -u$MARIADB_USER -p$MARIADB_PASSWORD $MARIADB_DATABASE <$TEMP_SQL
rm $TEMP_SQL
