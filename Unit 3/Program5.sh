#!/bin/bash

echo "unix is great os. unix is opensource. unix is free os." > unix.txt
echo "learn operating system." >> unix.txt
echo "unix linux which one you choose." >> unix.txt
echo "unix is easy to learn. unix is a multiuser os. Learn unix. unix is powerful." >> unix.txt

echo "Original Content:"
cat unix.txt
echo

sed -i 's/unix/linux/g' unix.txt

sed -i '0,/unix/s//linux/3' unix.txt

sed -i '2s/Unix/Linux/' unix.txt

sed -i '5d' unix.txt

echo "Modified Content:"
cat unix.txt
