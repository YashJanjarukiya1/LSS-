#!/bin/bash

number=1

until [ $number -gt 100 ]; do
    echo "$number"
    ((number += 2))
done