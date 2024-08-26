#!/bin/bash                                                                     
start=$(date)                                                                   
cd /usr/share/doc                                                               
echo "Document directory usage report" > /tmp/report                            
du -sh $(cat ~/test/dirs.txt) >> /tmp/report                                    
echo "Start of report: $start" >> /tmp/report                                   
echo "End of report: $(date)" >> /tmp/report  