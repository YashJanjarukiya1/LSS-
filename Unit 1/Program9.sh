#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ -f "$filename" ]; then
    echo "File '$filename' is an ordinary file. Contents:"
    cat "$filename"
else
    echo "File '$filename' does not exist or is not an ordinary file. Cannot display."
fi
