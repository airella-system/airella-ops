#!/usr/bin/env sh

gsm_extender_branch="master"

rm -rf build
mkdir build
cd build

git clone --single-branch --branch $gsm_extender_branch https://github.com/airella-system/airella-gsm-http-extender-proxy
