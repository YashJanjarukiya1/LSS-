#!/bin/bash

echo "Enter a word:"
read word

if [ ${#word} -ne 1 ]; then
    echo "Please enter a single character."
    exit 1
fi

case "$word" in
    [aeiouAEIOU])
        echo "The input '$word' is a vowel."
        ;;
    [0-9])
        echo "The input '$word' is a digit."
        ;;
    *)
        echo "The input '$word' is neither a vowel nor a digit."
        ;;
esac