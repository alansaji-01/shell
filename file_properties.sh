#!/bin/bash

# QUESTION:
# Write a shell script to accept a filename from the user and check
# whether the file exists. If it exists, check and display whether
# it is an ordinary file or a directory, whether it is readable,
# writable and executable, and whether it is empty or non-empty.
# If the file does not exist, display an appropriate error message.

echo "Enter filename:"
read file

if [ -e "$file" ]; then
    echo "File exists"

    if [ -f "$file" ]; then
        echo "It is an ordinary file"
    fi

    if [ -d "$file" ]; then
        echo "It is a directory"
    fi

    if [ -r "$file" ]; then
        echo "It is readable"
    fi

    if [ -w "$file" ]; then
        echo "It is writable"
    fi

    if [ -x "$file" ]; then
        echo "It is executable"
    fi

    if [ -s "$file" ]; then
        echo "It is not empty"
    else
        echo "It is empty"
    fi
else
    echo "Error: File does not exist"
fi
