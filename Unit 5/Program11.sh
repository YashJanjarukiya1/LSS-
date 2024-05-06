#!/bin/bash

addition() {
    read -p "Enter the first value: " value1
    
    read -p "Enter the second value: " value2
    
    result=$((value1 + value2))
    
    echo "The result of addition is: $result"
}

addition