#!/bin/bash
echo "================================"
echo "welcome to the log-analyzer"
echo "================================"
read -p "Enter log file: " logfile
if [  -f  "$logfile" ]
then
     echo "file found"
else
     echo "file not found"
     exit 1
fi
# total number of lines
 
total_lines=$(wc -l < "$logfile")

# count failed login attempts
 
failed_logins=$(grep -c "Failed"   "$logfile")
# count successful login attempts

successful_logins=$(grep -c "Accepted"  "$logfile")

# Count error messages

errors=$(grep -ic "error" "$logfile")

echo "=============Log Analysis Report======="
echo "Log File          : $logfile"
echo "Total_lines       : $total_lines"
echo "Failed_logins     : $failed_logins"
echo "Successful_logins : $successful_logins"
echo "Errors            : $errors"
echo "====================================="

