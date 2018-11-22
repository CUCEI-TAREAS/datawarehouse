#!/bin/bash

docker-entrypoint.sh postgres &

createdb -h 0.0.0.0 -p 5432 -U postgres donantes -T template0;

while [ $? -ne 0 ]
do
        echo "waiting to the postgres service"
	createdb -h 0.0.0.0 -p 5432 -U postgres donantes -T template0;
done

psql -h 0.0.0.0 -p 5432 -U postgres donantes < postgresql.sql;
psql -h 0.0.0.0 -p 5432 -U postgres donantes;
