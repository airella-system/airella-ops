#!/usr/bin/env bash
sh stop.sh
docker image rm airella-webapp
cd webapp
sh fetch.sh
docker build -t airella-webapp .
