#! /bin/sh
cd $(echo "`dirname \"$0\"`" | tr -d '\r') && cd ../ && docker-compose up
