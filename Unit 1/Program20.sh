#!/bin/bash

echo "Enter the marks obtained (out of 100):"
read marks

if [ $marks -lt 0 ] || [ $marks -gt 100 ]; then
    echo "Invalid marks! Marks should be between 0 and 100."
    exit 1
fi

if [ $marks -ge 90 ]; then
    grade="A+"
elif [ $marks -ge 80 ]; then
    grade="A"
elif [ $marks -ge 70 ]; then
    grade="B+"
elif [ $marks -ge 60 ]; then
    grade="B"
elif [ $marks -ge 50 ]; then
    grade="C"
elif [ $marks -ge 40 ]; then
    grade="D"
else
    grade="Fail"
fi

echo "The grade of the student is: $grade"