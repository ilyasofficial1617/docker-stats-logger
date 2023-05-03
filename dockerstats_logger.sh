#!/bin/bash

export logger_title='dockerstats'
export logger_command='docker stats --no-stream'
export logger_time='1'
export logger_bulk='all'
./logger.sh