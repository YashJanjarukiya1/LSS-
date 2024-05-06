#!/bin/bash

echo "Enter a filename:"
read filename


if [ -e "$filename" ]; then
    if [ -d "$filename" ]; then
        echo "Contents of the directory '$filename':"
        ls -l "$filename"
    else
        echo "File '$filename' is not a directory file."
    fi
else
    echo "File '$filename' does not exist."
fi