2. Write a shell script to test whether a file exists and check its properties.


#!/bin/bash

echo "Enter the filename:"
read file

if [ -e "$file" ]
then
    echo "File exists."

    if [ -f "$file" ]
    then
        echo "It is an ordinary file."
    fi

    if [ -d "$file" ]
    then
        echo "It is a directory."
    fi

    if [ -r "$file" ]
    then
        echo "File is readable."
    else
        echo "File is not readable."
    fi

    if [ -w "$file" ]
    then
        echo "File is writable."
    else
        echo "File is not writable."
    fi

    if [ -x "$file" ]
    then
        echo "File is executable."
    else
        echo "File is not executable."
    fi

    if [ -s "$file" ]
    then
        echo "File is not empty."
    else
        echo "File is empty."
    fi

else
    echo "File does not exist."
fi