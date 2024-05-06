#!/bin/bash

echo "Enter a number:"
read number

if [ $number -lt 0 ]; then
    echo "Factorial is not defined for negative numbers."
    exit 1
fi

factorial=1

for (( i = 1; i <= number; i++ )); do
    factorial=$((factorial * i))
done

echo "The factorial of $number is $factorial"