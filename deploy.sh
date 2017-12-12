#!/usr/bin/env bash

cd build/docker/cas_server/cas/

mvn package

docker ps -a | awk '{print $1}' | xargs docker rm -f

docker images -a | awk '{print $3}' | xargs docker rmi -f

cd ../../; docker-compose up