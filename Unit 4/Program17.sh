#!/bin/bash

echo "Files without read, write, and execute permissions for the owner in the current directory:"
find . -type f ! -perm /700