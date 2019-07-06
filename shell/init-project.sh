#! /bin/sh

docker exec node express
docker exec node npm install


printf "\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window