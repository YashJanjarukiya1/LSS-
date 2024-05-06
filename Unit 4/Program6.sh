#!/bin/bash

mkdir compressed_files

for file in "$@"; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        gzip -c "$file" > "compressed_files/${filename}.gz"
        echo "Compressed $file to compressed_files/${filename}.gz"
    else
        echo "File '$file' does not exist or is not a regular file. Skipping..."
    fi
done

echo "Compression completed. Compressed files are stored in the 'compressed_files' directory."