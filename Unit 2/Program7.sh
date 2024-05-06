#!/bin/bash

echo "Enter a number:"
read number

if ! [[ $number =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

echo "Multiplication table of $number:"
for (( i = 1; i <= 10; i++ )); do
    echo "$number x $i = $((number * i))"
done