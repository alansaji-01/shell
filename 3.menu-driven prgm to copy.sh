3. Write a menu-driven shell program to copy, edit, rename and delete a file.

#!/bin/bash

while true
do
    echo "----- FILE OPERATIONS -----"
    echo "1. Copy File"
    echo "2. Edit File"
    echo "3. Rename File"
    echo "4. Delete File"
    echo "5. Exit"

    echo "Enter your choice:"
    read ch

    case $ch in

        1)
            echo "Enter source filename:"
            read src

            echo "Enter destination filename:"
            read dest

            if [ -f "$src" ]
            then
                cp "$src" "$dest"
                echo "File copied successfully."
            else
                echo "Source file does not exist."
            fi
            ;;

        2)
            echo "Enter filename to edit:"
            read file

            if [ -f "$file" ]
            then
                nano "$file"
            else
                echo "File does not exist."
            fi
            ;;

        3)
            echo "Enter old filename:"
            read old

            echo "Enter new filename:"
            read new

            if [ -e "$old" ]
            then
                mv "$old" "$new"
                echo "File renamed successfully."
            else
                echo "File does not exist."
            fi
            ;;

        4)
            echo "Enter filename to delete:"
            read file

            if [ -f "$file" ]
            then
                rm -i "$file"
            else
                echo "File does not exist."
            fi
            ;;

        5)
            echo "Exiting program."
            break
            ;;

        *)
            echo "Invalid choice."
            ;;

    esac
done