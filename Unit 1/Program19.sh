#!/bin/bash

echo "Enter the year of birth (YYYY):"
read birth_year

current_year=$(date +%Y)

age=$((current_year - birth_year))

echo "The age of the employee is $age years."