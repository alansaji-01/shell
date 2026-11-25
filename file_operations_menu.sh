#!/bin/bash

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
