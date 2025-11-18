#!/bin/bash
# Purpose : Log CPU and Memory usage at regular intervals
# Name  : Sree Parvati 
# Date    : 15-11-2025

# Log file location
Logged_FILE="/home/unipt_sreeparvati01/system_usage.log"

# Interval between logs (in seconds)
INTERVAL=5

echo "Starting CPU & Memory Monitoring..."
echo "Logs will be saved in $Logged_FILE"
echo "--------------------------------------" >> "$Logged_FILE"

while true
do
    # Current time
    TIME=$(date +"%Y-%m-%d %H:%M:%S")

    # CPU usage
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2+$4}')

    # Memory usage
    MEM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

    # Write to log file
    echo "Time: $TIME | CPU: ${CPU}% | Memory: ${MEM}%" >> "$Logged_FILE"

    # Wait for interval
    sleep $INTERVAL
done


