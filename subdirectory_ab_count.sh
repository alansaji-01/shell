#!/bin/bash

# QUESTION:
# Write a shell script to accept the name of a directory (subdirectory)
# from the user. Check whether the directory exists. If it exists,
# display its contents, list all entries whose names start with "ab",
# and display the count of those entries. Otherwise, display an
# appropriate error message.

echo "Enter directory name:"
read dir

if [ -d "$dir" ]; then
    echo "Directory contents:"
    ls "$dir"

    echo "Entries starting with ab:"
    find "$dir" -maxdepth 1 -mindepth 1 -name 'ab*' -printf '%f\n'

    count=$(find "$dir" -maxdepth 1 -mindepth 1 -name 'ab*' | wc -l)
    echo "Number of entries starting with ab: $count"
else
    echo "Error: Directory does not exist"
fi
