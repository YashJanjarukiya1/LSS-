#!/bin/bash

calculate_square_cube() {
    if [ $# -ne 1 ]; then
        echo "Usage: calculate_square_cube <number>"
        return 1
    fi

    local number=$1
    local square=$((number * number))
    local cube=$((number * number * number))

    echo "Square of $number is: $square"
    echo "Cube of $number is: $cube"
}

calculate_square_cube "$@"