#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1=$1
file2=$2


echo "Displaying the contents of file: $file1"
more "$file1"


cp "$file1" "$file2"

echo "File copied successfully."