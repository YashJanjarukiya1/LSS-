#!/bin/bash

echo "Enter the name of the file to search for:"
read filename

echo "Files with the name '$filename' in the current directory:"
find . -type f -name "$filename"