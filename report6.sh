#!/bin/bash

start=$(date)
echo "Document directory usage report" > /tmp/report
read -p "Enter a directory: " dir

if [ -d $dir -a -r $dir -a -x $dir ]
then
    du -sh $dir >> /tmp/report
    echo "Start of report: $start" >> /tmp/report
    echo "End of report: $(date)" >> /tmp/report
else
    echo "Error, $dir could not be accessed"
    echo "Error: no report generated. $dir not accessible" >> /tmp/report
fi
# The script will check if the directory is readable and executable before generating the report. If the directory is not accessible, the script will print an error message and generate a report with the error message. The script will also print the start and end time of the report.