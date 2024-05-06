#!/bin/bash

echo "Read-only files in the current directory:"
find . -type f -perm /400 ! -perm /200 ! -perm /100