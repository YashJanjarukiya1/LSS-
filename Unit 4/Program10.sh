#!/bin/bash

echo "Shell files in the directory and their types:"
file * | grep -E 'shell script|Bourne-Again shell script|POSIX shell script'