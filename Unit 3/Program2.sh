#!/bin/bash

awk '{printf "%-10s %s\n", $1, $3}' your_input_file