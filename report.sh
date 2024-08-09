#!/bin/bash                                                                     
                                                                                cd /usr/share/doc                                                               
echo "Document directory usage report" > /tmp/report                            
date >> /tmp/report                                                             
pwd >> /tmp/report                                                              
du -sh . >> /tmp/report  