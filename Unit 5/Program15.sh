#!/bin/bash

check_even_odd() {
    read -p "Enter a number: " number
    
    if [ $((number % 2)) -eq 0 ]; then
        echo "The entered number is even."
    else
        echo "The entered number is odd."
    fi
}

check_even_odd