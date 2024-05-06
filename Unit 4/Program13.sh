#!/bin/bash

echo "Enter the name of the files to search for:"
read filename

echo "Files with the name '$filename' and extensions .c and .txt in the current directory:"
find . -type f \( -name "*.$filename.c" -o -name "*.$filename.txt" \)