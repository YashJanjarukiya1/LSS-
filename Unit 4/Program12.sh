#!/bin/bash

echo "Enter the name of the directory to search for:"
read dirname

echo "Directories with the name '$dirname' in the current directory:"
find . -type d -name "$dirname"