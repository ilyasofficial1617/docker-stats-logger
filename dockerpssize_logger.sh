#!/bin/bash

export logger_title='dockerpssize'
export logger_command='docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Size}}"'
export logger_time='1'
./logger.sh