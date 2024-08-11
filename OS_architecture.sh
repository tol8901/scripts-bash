#!/bin/bash

ARCHITECTURE=$(uname -m)
if [ $ARCHITECTURE = "i686" ]
then
    echo "32 Bit Operating System Detected"
else
    if [ $ARCHITECTURE = "x86_64"]
    then
        echo "64 Bit Operating System Detected"
    fi
fi