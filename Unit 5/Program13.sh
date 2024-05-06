#!/bin/bash

calculate_total_marks() {
    read -p "Enter marks for subject 1: " marks1
    read -p "Enter marks for subject 2: " marks2
    read -p "Enter marks for subject 3: " marks3
    
    total=$((marks1 + marks2 + marks3))
    
    echo "$total"
}

total_marks=$(calculate_total_marks)

echo "Total marks: $total_marks"