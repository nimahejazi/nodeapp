#!/bin/bash
docker kill nodeapp > /dev/null 2>&1
docke rm nodeapp > /dev/null 2>&1
docker rmi nodeapp > /dev/null 2>&1
docker build -t nodeapp -f nodeapp/Dockerfile
docker run -p 3000:3000 --name nodeapp nodeapp
