#!/bin/bash

# Check if the user has provided a zip code
# (we are using standard United States zip codes, a 5 digit number)
read -p "Enter your ZIP code: " zip
if echo $zip | grep -E '^[0-9]+$' > /dev/null 2>/dev/null
then
    echo "Thank you for the proper zip code"
else
    echo "Incorrect zip code"
fi