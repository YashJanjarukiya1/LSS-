#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1=$1
file2=$2

if [ ! -f "$file1" ]; then
    echo "File '$file1' does not exist."
    exit 1
elif [ ! -f "$file2" ]; then
    echo "File '$file2' does not exist."
    exit 1
fi

cat "$file2" >> "$file1"

echo "Content of '$file2' has been appended to '$file1'."