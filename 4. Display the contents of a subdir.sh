4. Display the contents of a subdirectory and count entries starting with "ab"


#!/bin/bash

echo "Enter the directory name:"
read dir

if [ -d "$dir" ]
then
    echo "Contents of the directory:"
    ls -la "$dir"

    echo "Entries starting with ab:"

    count=$(find "$dir" -maxdepth 1 -name 'ab*' | wc -l)

    echo "Total number of entries starting with ab: $count"
else
    echo "Directory does not exist."
fi