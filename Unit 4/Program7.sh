#!/bin/bash

mkdir uncompressed_files

for file in "$@"; do
    if [ -f "$file" ] && [[ "$file" == *.gz ]]; then
        filename=$(basename "$file" .gz)
        gzip -d -c "$file" > "uncompressed_files/${filename}"
        echo "Uncompressed $file to uncompressed_files/${filename}"
    else
        echo "File '$file' does not exist or is not a compressed file. Skipping..."
    fi
done

echo "Uncompression completed. Uncompressed files are stored in the 'uncompressed_files' directory."