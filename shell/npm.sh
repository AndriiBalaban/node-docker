#! /bin/sh
echo Hi! I\'m a npm script runnner.
echo please enter the npm COMMAND.
echo npm [COMMAND]
echo Examples:
echo    - run dev
echo    - run watch
echo    - run prod
echo    - install
echo    - update
printf "npm "
read command
echo =============================================================

#if [ $command != '' ]
#then
        echo npm ${command}
        docker exec node npm ${command}
#fi

printf "\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window