#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ -e "$filename" ]; then
    echo "File '$filename' exists."
    
    size=$(stat -c %s "$filename")
    echo "Size of '$filename': $size bytes"
else
    echo "File '$filename' does not exist."
fi
