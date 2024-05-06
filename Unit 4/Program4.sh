#!/bin/bash

folder="folder_name"

if [ ! -d "$folder" ]; then
    echo "Folder '$folder' does not exist."
    exit 1
fi

for compressed_file in "$folder"/*; do
    if [ -f "$compressed_file" ]; then
        if [[ "$compressed_file" == *.gz ]]; then
            decompression_command="gzip -d"
        elif [[ "$compressed_file" == *.bz2 ]]; then
            decompression_command="bzip2 -d"
        elif [[ "$compressed_file" == *.xz ]]; then
            decompression_command="xz -d"
        else
            echo "Unknown compression format for file '$compressed_file'. Skipping..."
            continue
        fi

        $decompression_command "$compressed_file"
    fi
done