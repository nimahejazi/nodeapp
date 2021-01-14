#!/bin/bash
docker kill nodeapp > /dev/null 2>&1
docker rm nodeapp > /dev/null 2>&1
docker rmi nodeapp > /dev/null 2>&1
docker build -t mynodeapp -f nodeapp .
docker run -p 3000:3000 -e PORT=3000 --name nodeapp mynodeapp
