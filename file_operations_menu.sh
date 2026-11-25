#!/bin/bash

# QUESTION:
# Write a menu-driven shell script to perform file operations.
# The menu should provide the following choices:
# 1. Copy a file.
# 2. Edit a file.
# 3. Rename a file.
# 4. Delete a file.
# Accept the user's choice and the required filenames, then
# perform the selected operation. Display an error for an invalid choice.

echo "1. Copy"
echo "2. Edit"
echo "3. Rename"
echo "4. Delete"

echo "Enter your choice:"
read choice

case "$choice" in
    1)
        echo "Enter source filename:"
        read file
        echo "Enter destination filename:"
        read dest
        cp "$file" "$dest"
        echo "File copied"
        ;;
    2)
        echo "Enter filename:"
        read file
        nano "$file"
        ;;
    3)
        echo "Enter old filename:"
        read old
        echo "Enter new filename:"
        read new
        mv "$old" "$new"
        echo "File renamed"
        ;;
    4)
        echo "Enter filename:"
        read file
        rm -i "$file"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
