#!/bin/bash

swap_values() {
    read -p "Enter the first value: " value1
    
    read -p "Enter the second value: " value2
    
    echo "Before swapping:"
    echo "First value: $value1"
    echo "Second value: $value2"
    
    temp=$value1
    value1=$value2
    value2=$temp
    
    echo "After swapping:"
    echo "First value: $value1"
    echo "Second value: $value2"
}

swap_values