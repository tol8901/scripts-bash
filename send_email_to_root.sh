#!/bin/bash

if [ -d /data/January ]
then
    echo "January directory exists at `date`" | mail root
fi