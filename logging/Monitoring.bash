#!/bin/bash


# This Will Check the 
StatusCode=$(curl -s -I http://localhost:5000 | head -1 |  awk '{print $2}')
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

if [ $StatusCode -ne 200 ]; then
    echo "Sending an alert" # in this if we should include smtp server to get the alert and notifcation
fi

logFile='LogFile.log'
message="$current_datetime ------ Status Code: $StatusCode"

echo "$message" >> "$logFile"



