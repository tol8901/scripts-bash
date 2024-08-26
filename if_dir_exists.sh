#!/bin/bash

read -p "Enter a directory name: " dir
start=$(date)
echo "Document directory usage report" > /tmp/report
du -sh $dir >> /tmp/report 2> /dev/null

if [ $? -eq 0 ]
then
    echo "Start of report: $start" >> /tmp/report
    echo "End of report: $(date)" >> /tmp/report
else
    