#!/bin/bash

export logger_title='nvidiasmi'
export logger_command='nvidia-smi pmon -i 0 -c 1 -s um'
export logger_time='1'
export logger_bulk='all'
./logger.sh