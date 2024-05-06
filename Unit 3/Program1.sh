#!/bin/bash

echo "New York" > cities.txt
echo "London" >> cities.txt
echo "Tokyo" >> cities.txt
echo "Paris" >> cities.txt
echo "Sydney" >> cities.txt
echo "Beijing" >> cities.txt
echo "Dubai" >> cities.txt
echo "Toronto" >> cities.txt
echo "Mumbai" >> cities.txt
echo "Berlin" >> cities.txt
echo "Los Angeles" >> cities.txt
echo "Rio de Janeiro" >> cities.txt
echo "Moscow" >> cities.txt
echo "Cairo" >> cities.txt
echo "Rome" >> cities.txt
echo "Seoul" >> cities.txt
echo "Delhi" >> cities.txt
echo "Bangkok" >> cities.txt
echo "Singapore" >> cities.txt
echo "Istanbul" >> cities.txt

echo "Original Content:"
cat cities.txt
echo

cut -c 2-4 cities.txt > cities_cut.txt

sort cities_cut.txt -o cities_sorted.txt

echo "First five cities:"
head -n 5 cities_sorted.txt
echo

echo "Last five cities:"
tail -n 5 cities_sorted.txt
