#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

if [ -x "$filename" ]; then
    echo "File '$filename' exists and is executable."
else
    echo "File '$filename' does not exist or is not executable."
fi