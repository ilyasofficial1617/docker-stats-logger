#!/bin/bash

# required env
# logger_title
# logger_command (string)
# logger_time (interval)
# logger_bulk (all/daily)

logger_dir='data'

# bulk store all or daily
if [[ $logger_bulk == "all" ]]; then
    filename="${logger_dir}/${logger_title}.txt"
elif [[ $logger_bulk == "daily" ]]; then
    filename="${logger_dir}/${logger_title}_${(date +'%d_%b_%Y')}.txt"
fi
echo $filename

while true
do 
    # read input 
    read -t 1 -N 1 x
    # print time to file
    printf "\n$(date +'%d_%b_%Y_%H_%M_%S'):\n" | tee --append $filename
    # print resulting command that want to be logged
    eval $logger_command | tee --append $filename
    # if q then quit
    if [[ $x == "q" ]]; then 
        echo ""
        break
    fi
done