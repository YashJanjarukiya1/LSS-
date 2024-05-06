#!/bin/bash

check_number() {
    read -p "Enter a number: " number
    
    if [ $number -gt 0 ]; then
        echo "The entered number is positive."
    elif [ $number -lt 0 ]; then
        echo "The entered number is negative."
    else
        echo "The entered number is zero."
    fi
}

check_number