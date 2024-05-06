#!/bin/bash
mkdir mydir

echo "Enter name:"
read name
echo "Enter age:"
read age
echo "Enter address:"
read address

echo "Name: $name" > mydir/text
echo "Age: $age" >> mydir/text
echo "Address: $address" >> mydir/text

cat mydir/text
