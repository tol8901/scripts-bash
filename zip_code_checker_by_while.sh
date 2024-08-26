#!/bin/bash

# Check if the user has provided a zip code
# (we are using standard United States zip codes, a 5 digit number)

read -p "Enter a valid ZIP code: " zip

while echo $zip | grep -E -v '^[0-9]{5}$' > /dev/null 2> /dev/null
do
    echo "$zip is not a valid zip code"
    echo "The zip code must consist of all numbers"
    read -p "Enter a valid ZIP code: " zip
done

echo "Thank you, $zip is a correct zip code"