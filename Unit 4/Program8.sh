#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <archive>"
    exit 1
fi

archive="$1"

if [ ! -f "$archive" ]; then
    echo "Archive '$archive' does not exist."
    exit 1
fi

temp_dir=$(mktemp -d)

tar -xf "$archive" -C "$temp_dir" || { echo "Failed to extract files from the archive."; exit 1; }

for file in "$temp_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        
        uncompressed_size=$(stat -c %s "$file")
        
        gzip -c "$file" | wc -c > "$temp_dir/${filename}.gz"
        compressed_size=$(cat "$temp_dir/${filename}.gz")
        
        percentage=$(awk "BEGIN { printf \"%.2f\", ($uncompressed_size - $compressed_size) / $uncompressed_size * 100 }")
        
        echo "File: $filename"
        echo "  Uncompressed size: $uncompressed_size bytes"
        echo "  Compressed size: $compressed_size bytes"
        echo "  Compression achieved: $percentage%"
    fi
done

rm -r "$temp_dir"