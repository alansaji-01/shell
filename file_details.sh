#!/bin/bash

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
