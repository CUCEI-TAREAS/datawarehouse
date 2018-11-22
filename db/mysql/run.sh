#!/bin/bash

docker kill mysql; docker rm mysql
docker image rm mysql
docker build -t mysql -f Dockerfile .
docker run -it -P --name mysql --network host mysql
