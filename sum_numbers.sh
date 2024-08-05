#!/bin/bash

# Check if the file name is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Assign the file name to a variable
file=$1

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File not found: $file"
    exit 1
fi

# Initialize sum variable
sum=0

# Read each line from the file and add to the sum
while IFS= read -r line; do
    # Check if the line is a valid number
    if [[ $line =~ ^[0-9]+$ ]]; then
        sum=$((sum + line))
    else
        echo "Skipping invalid line: $line"
    fi
done < "$file"

# Output the result
echo "The sum of all numbers in $file is: $sum"