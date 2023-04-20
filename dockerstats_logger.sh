#!/bin/bash

now=$(date +'%d_%b_%Y_%H_%M')

while true; do printf "\n$(date +'%d_%b_%Y_%H_%M_%S'):\n" | tee --append data/dockerstats_$now.txt;  docker stats --no-stream | tee --append data/dockerstats_$now.txt; sleep 1; done