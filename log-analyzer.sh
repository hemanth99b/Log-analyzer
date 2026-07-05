#!/bin/bash
while  true 
do
echo "=====Log-Analyzer======"
echo "1. Analyze Log file"
echo "2. Exit"
read -p "Enter your Choice:" Choice
      case  "$Choice" in
1) echo "================================"
 echo "welcome to the log-analyzer"
 echo "================================"
 read -p "Enter log file: " logfile
 if [  -f  "$logfile" ]
 then
     echo "file found"
     echo "=== error messages==="
   if grep -iq "errors" "$logfile"
then
   grep -i "errors"  "$logfile"
else 
 echo " no errors found"
 fi
  echo "===failed  login attempts====="
  if grep -iq "failed " "$logfile"
then
  grep -i "failed " "$logfile"
else
  echo "no failed login attempts found"
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
  else 
 echo "file not found"
fi
;;
2) echo "GoodBye!"
   exit 0
   ;;
*) echo "Invalid Choice";;
esac
done

