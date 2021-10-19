#!/bin/bash

printf "Get SSH sessions PIDs\n"


IFS=$'\n' read -rd '' -a SESSIONS <<< $(ps -C sshd -o pid,command | grep "pts/")


printf "Active sessions: ${#SESSIONS[*]}\n"


for i in ${!SESSIONS[@]}
do
        IFS=" " read -r -a SESSION <<< ${SESSIONS[i]}
        printf "Closing session PID: ${SESSION[0]}  user: ${SESSION[2]}\n"
        kill -9 ${SESSION[0]}
done

printf "Script finished\n"
