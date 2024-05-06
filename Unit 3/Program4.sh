#!/bin/bash

echo  "No\tItem_Name\tQuantity\tPrice" > inventory_file
echo  "1\tPen\t45\t\$3.45" >> inventory_file
echo  "2\tPencil\t25\t\$2.45" >> inventory_file
echo  "3\tEraser\t5\t\$4.45" >> inventory_file
echo  "4\tPen\t25\t\$3.45" >> inventory_file
echo  "5\tStapler\t15\t\$1.45" >> inventory_file
echo  "6\tPen\t30\t\$3.45" >> inventory_file

echo "Records starting with 'P':"
grep -i '^P' inventory_file

count=$(awk -F'\t' '$3 == 25 {count++} END {print count}' inventory_file)
echo "Count of records with Quantity = 25: $count"

max_price_record=$(awk -F'\t' 'NR == 1 || $4 > max {max = $4; record = $0} END {print record}' inventory_file)
echo "Record with Maximum Price:"
echo  "$max_price_record"
