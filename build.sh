#!/usr/bin/env sh
sh stop.sh
cd webapp
sh fetch.sh
docker-compose build
