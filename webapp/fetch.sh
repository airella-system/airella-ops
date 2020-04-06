#!/usr/bin/env bash
rm -rf build
mkdir build
cd build
git clone https://github.com/airella-system/airella-backend
cd airella-backend
sh mvnw -Pprod clean package -DskipTests

