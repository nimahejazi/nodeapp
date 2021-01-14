#!/bin/bash
docker kill nodeapptest > /dev/null 2>&1
docker rm nodeapptest > /dev/null 2>&1
docker rmi nodeapptest > /dev/null 2>&1
docker build -t nodeapptest nodeapp
docker run --rm -ti nodeapptest npm test
