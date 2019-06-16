#! /bin/sh
docker container stop node
docker container stop mongo
docker container stop mongo-express
docker rm node
docker rm mongo
docker rm mongo-express
docker rm beanstalkd
printf "\n\n\nFINISH\n"
