#!/bin/bash

echo  "No\tItem_Name\tQuantity\tPrice" > f1

echo  "1\tMangoes\t45\t\$3.45" >> f1
echo  "2\tApples\t25\t\$2.45" >> f1
echo  "3\tPineapples\t5\t\$4.45" >> f1
echo  "4\tTomatoes\t25\t\$3.45" >> f1
echo  "5\tOnions\t15\t\$1.45" >> f1
echo  "6\tBananas\t30\t\$3.45" >> f1

awk -F'\t' '$3 > 15 {print $0 "*"} $3 <= 15 {print $0}' f1
