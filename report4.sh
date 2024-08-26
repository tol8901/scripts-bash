#!/bin/bash

read -p "Enter a directory: " dir
start=$(date)
echo "Document directory usage report" > /tmp/report
du -sh $dir >> /tmp/report 2> /dev/null
if [ $? -eq 0 ]
then
    echo "Start of report: $start" >> /tmp/report
    echo "End of report: $(date)" >> /tmp/report
else
    echo "Error, $dir could not be accessed"
    echo "Error: no report generated. $dir not accessible" >> /tmp/report
fi