#!/usr/bin/env sh

frontend_branch="master"
backend_branch="master"

while [[ "$#" -gt 0 ]]; do case $1 in
  -f|--frontend-branch) frontend_branch="$2"; shift;;
  -b|--backend-branch) backend_branch="$2"; shift;;
  *) echo "Unknown parameter passed: $1"; exit 1;;
esac; shift; done

rm -rf build
mkdir build
cd build
git clone --single-branch --branch $backend_branch https://github.com/airella-system/airella-backend
git clone --single-branch --branch $frontend_branch https://github.com/airella-system/airella-frontend
