a=10
b=20
if [ $a==$b ]
then
echo "a is equal to b"
elif [ $a -gt $b ]
then
echo "a is greater than b"
elif [ $a -lt $b ]
then
echo "a leas than b"
elif [ $a != $b ]
then
echo "a is not equal to b"
else
echo "sorry invalied input"
fi
