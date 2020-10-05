#!/usr/bin/env sh

frontend_branch="master"
backend_branch="master"

while [[ "$#" -gt 0 ]]; do case $1 in
  -f|--frontend-branch) frontend_branch="$2"; shift;;
  -b|--backend-branch) backend_branch="$2"; shift;;
  *) echo "Unknown parameter passed: $1"; exit 1;;
esac; shift; done

sh stop.sh
cd webapp
sh fetch.sh --frontend-branch $frontend_branch --backend-branch $backend_branch
cd ..
cd gsm-extender
sh fetch.sh
cd ..

docker-compose build