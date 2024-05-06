#!/bin/bash

folder="folder_name"

if [ ! -d "$folder" ]; then
    echo "Folder '$folder' does not exist."
    exit 1
fi

for file in "$folder"/*; do
    if [ -f "$file" ]; then
        gzip "$file"
    fi
done