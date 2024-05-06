#!/bin/bash

echo "Enter a number:"
read number

reverse=""
remainder=0

temp=$number

while [ $temp -gt 0 ]; do
    remainder=$((temp % 10))
    reverse="${reverse}${remainder}"
    temp=$((temp / 10))
done

echo "The reverse of $number is $reverse"