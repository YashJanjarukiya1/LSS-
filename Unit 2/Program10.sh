#!/bin/bash

echo "Enter a number:"
read number

num=$number
digit_count=0
sum=0

while [ $num -gt 0 ]; do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
    digit_count=$((digit_count + 1))
done

echo "Number of digits: $digit_count"
echo "Sum of digits: $sum"