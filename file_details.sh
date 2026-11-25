#!/bin/bash

# QUESTION:
# Write a shell script to accept a filename from the user.
# Check whether the file exists. If it exists, display the number
# of lines, words and characters in the file. Also display the
# first five lines and the last five lines of the file.
# If the file does not exist, display an appropriate error message.

echo "Enter filename:"
read file

if [ -f "$file" ]; then
    echo "Number of lines:"
    wc -l < "$file"

    echo "Number of words:"
    wc -w < "$file"

    echo "Number of characters:"
    wc -m < "$file"

    echo "First five lines:"
    head -n 5 "$file"

    echo "Last five lines:"
    tail -n 5 "$file"
else
    echo "Error: File does not exist"
fi
