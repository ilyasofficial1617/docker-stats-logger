#!/bin/bash

# required env
# logger_title
# logger_command (string)
# logger_time (interval)

logger_dir='data'

while true
do 
    now=$(date +'%d_%b_%Y_%H_%M') 
    printf "\n$(date +'%d_%b_%Y_%H_%M_%S'):\n" | tee --append "$logger_dir/${logger_title}_${now}.txt"
    eval $logger_command | tee --append "$logger_dir/${logger_title}_${now}.txt"
    sleep 1
done