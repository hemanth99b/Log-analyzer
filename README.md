# Bash Log Analyzer

A menu-driven Bash script that analyzes Linux log files and provides a summary of important information such as login attempts and error messages.

## Features

- Menu-driven interface
- Accepts a log file from the user
- Checks whether the log file exists
- Counts the total number of lines
- Counts successful login attempts
- Counts failed login attempts
- Counts total error messages
- Displays all error messages found in the log file
- Displays "No errors found." if the log file contains no errors
- Handles invalid menu choices

## Technologies Used

- Bash Shell Scripting
- Linux
- grep
- wc
- if-else statements
- while loop
- case statement

## Project Structure

```
bash-log-analyzer/
│── log-analyzer.sh
│── report.txt
│── README.md
```

## How to Run

### Clone the repository

```bash
git clone https://github.com/<your-github-username>/bash-log-analyzer.git
```

### Go to the project directory

```bash
cd bash-log-analyzer
```

### Make the script executable

```bash
chmod +x log-analyzer.sh
```

### Run the script

```bash
./log-analyzer.sh
```

## Sample Log File

Example (`report.txt`):

```text
Accepted password for user1
Failed password for root
ERROR: Disk full
Accepted password for admin
Failed password for admin
ERROR: Permission denied
```

## Sample Output

```
====== Log Analyzer ======

1. Analyze Log File
2. Exit

Enter your Choice: 1

Enter log file: report.txt

File found

========== Error Messages ==========
ERROR: Disk full
ERROR: Permission denied

========== Log Analysis Report ==========
Log File            : report.txt
Total Lines         : 6
Failed Logins       : 2
Successful Logins   : 2
Errors              : 2
```

## Concepts Practiced

- Variables
- User input (`read`)
- Conditional statements (`if`, `else`)
- Loops (`while`)
- Menu-driven programs (`case`)
- Exit status
- File handling
- Text processing using `grep`
- Counting lines using `wc`
- Shell scripting best practices

## Future Improvements

- Display failed login entries
- Display successful login entries
- Show usernames involved in login attempts
- Show IP addresses from log entries
- Generate a report file automatically
- Display top 5 most frequent errors
- Search logs by keyword
- Filter logs by date
- Export results to CSV

## Author

**Hemanth Raju**

Learning Bash scripting through project-based development.
