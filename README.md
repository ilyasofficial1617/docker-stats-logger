# Simple Stats Logger
Simply logging server stats into file.  
It is preffered to run these programs in background because it might be interrupted.  

# How to use
This tutorial uses screen to manage background task
1. Run the screen command
  ```
  screen
  ```
2. Inside spawned screen, run the desired [logger command](#simple-stats-logger-command).  example : 
  ```
  ./dockerstats_logger.sh
  ```
3. Watch the log being written to data folder, or send it to background with shortcut ctrl+a and then ctrl+d
4. Type q to gracefully stop the logger

# Simple stats logger command

## Docker Stats
  ```
  ./dockerstats_logger.sh
  ```

## Docker Ps
  ```
  ./dockerps_logger.sh
  ```

## Docker Ps Size
  ```
  ./dockerpssize_logger.sh
  ```

## Nvidia-smi Stats
  ```
  ./nvidiasmi_logger.sh
  ```

## Bitfusion smi
  ```
  ./bitfusionsmi_logger.sh
  ```

## Custom Stats
  ```
  #filename
  export logger_title='mycustomdata'
  #command to get data
  export logger_command='myapplog'
  #time interval
  export logger_time='1'
  #logger storage bulk method
  export logger_bulk='all' or export logger_bulk='daily'
  #run
  ./logger.sh
  ```

# Credit
logger : https://stackoverflow.com/a/67252305


