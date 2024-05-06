#!/bin/bash

concatenate_strings() {
    echo "Enter the first string:"
    read string1
    echo "Enter the second string:"
    read string2
    concatenated_string="$string1$string2"
    echo "Concatenated string: $concatenated_string"
}

rename_file() {
    echo "Enter the current name of the file:"
    read old_name
    echo "Enter the new name of the file:"
    read new_name
    mv "$old_name" "$new_name"
    echo "File renamed successfully."
}

delete_file() {
    echo "Enter the name of the file to delete:"
    read filename
    rm -i "$filename"
    echo "File deleted successfully."
}

copy_file() {
    echo "Enter the name of the file to copy:"
    read filename
    echo "Enter the destination directory:"
    read destination
    cp "$filename" "$destination"
    echo "File copied successfully."
}

echo "Menu:"
echo "1. Concatenate two strings"
echo "2. Rename a file"
echo "3. Delete a file"
echo "4. Copy a file to specific location"
echo "Enter your choice:"

read choice

case $choice in
    1) concatenate_strings ;;
    2) rename_file ;;
    3) delete_file ;;
    4) copy_file ;;
    *) echo "Invalid choice" ;;
esac