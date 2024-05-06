#!/bin/bash

echo "Enter a number:"
read number

factor_count=0

if [ $number -gt 1 ]; then
    for (( i = 2; i <= number/2; i++ )); do
        if [ $((number % i)) -eq 0 ]; then
            factor_count=$((factor_count + 1))
            break
        fi
    done

    if [ $factor_count -eq 0 ]; then
        echo "$number is a prime number."
    else
        echo "$number is not a prime number."
    fi
else
    echo "$number is not a prime number."
fi