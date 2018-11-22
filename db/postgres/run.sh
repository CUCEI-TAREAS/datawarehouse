#!/bin/bash

docker kill postgres; docker rm postgres
docker image rm postgres
docker build -t postgres -f Dockerfile .
docker run -it -P --name postgres --network host postgres
