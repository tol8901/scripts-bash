#!/bin/bash

# Check if the user has provided a zip code
# (we are using standard United States zip codes, a 5 digit number)
read -p "Enter your ZIP code: " zip
if [ $zip -eq 9999999 ]
then
    echo "You are in the Mars zip code"
fi