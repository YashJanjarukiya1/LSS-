#!/bin/bash

echo "Enter the extension of the files to search for (without the dot):"
read extension

echo "Files with the extension '.$extension' in the current directory:"
find . -type f -name "*.$extension"