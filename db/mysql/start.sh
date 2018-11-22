#!/bin/bash

docker-entrypoint.sh mysqld &

mysql -h 0.0.0.0 -P 3306 -e "show databases;"

while [ $? -ne 0 ]
do
	echo "waiting to the mysql service"
	mysql -h 0.0.0.0 -P 3306 -e "show databases;"
done
mysql -h 0.0.0.0 -P 3306 -e "create database trasplante;"
mysql -h 0.0.0.0 -P 3306 -e " use trasplante; source trasplante.sql;"

mysql
