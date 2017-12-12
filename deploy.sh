#!/usr/bin/env bash

./gradlew clean; ./gradlew up

cd build/docker/cas_server/cas/

mvn package

docker rm -f docker_cas_server_1

docker rmi -f docker_cas_server

cd ../../; docker-compose up