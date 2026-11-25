#!/bin/bash

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
