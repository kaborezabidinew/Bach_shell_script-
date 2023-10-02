#!/bin/bash

# Define the directory where log files are stored
LOG_DIR="/path/to/log/directory"

# Define the maximum age of log files in days
MAX_AGE=30

# Navigate to the log directory
cd $LOG_DIR

# Remove log files older than MAX_AGE days
find . -type f -mtime +$MAX_AGE -exec rm {} \;

#crontab to run the script every midnight 
0 0 * * * /path/to/log_cleanup.sh
