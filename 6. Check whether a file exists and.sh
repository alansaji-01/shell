6. Check whether a file exists and identify its properties


#!/bin/bash

echo "Enter the filename:"
read file

if [ -e "$file" ]
then
    echo "File exists."

    if [ -f "$file" ]
    then
        echo "Ordinary file."
    fi

    if [ -d "$file" ]
    then
        echo "Directory."
    fi

    if [ -r "$file" ]
    then
        echo "Readable."
    else
        echo "Not readable."
    fi

    if [ -w "$file" ]
    then
        echo "Writable."
    else
        echo "Not writable."
    fi

    if [ -x "$file" ]
    then
        echo "Executable."
    else
        echo "Not executable."
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