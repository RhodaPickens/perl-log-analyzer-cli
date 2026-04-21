# Log Analyzer (Perl)

A command-line Perl tool for analyzing log files, extracting errors and warnings, and generating summary reports for troubleshooting.

---

## Features

- Parses log files line by line
- Extracts error and warning types using regex
- Counts frequency of each error/warning type
- Generates a summary report in the terminal
- Displays total lines processed

---

## Usage

Run the script from the command line:

perl analyzer.pl <logfile> 
e.g. perl analyzer.pl sample.log

## Example Output

ERROR SUMMARY
-------------------
DatabaseError: 3
TimeoutError: 1

WARNING SUMMARY
-------------------
DiskSpaceLow: 2

Total lines processed: 8
