a=10
b=20

if [ $a -gh $b ]
then
echo 'a is graterthen b'
elif [ $a -ls $b ]
then
echo 'a is lessthan b'
else
echo 'sorry'
fi
