#! /bin/sh
cd $(echo "`dirname \"$0\"`" | tr -d '\r')
/bin/bash stop.sh
/bin/bash start.sh