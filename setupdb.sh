#!/bin/bash

docker-compose up -d
sleep 10
docker exec mongo1 ./rs-init.sh
sleep 20
docker exec mongo1 mongorestore ./mongo-seed/dump