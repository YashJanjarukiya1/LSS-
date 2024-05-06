for i in * 
do
	if [ -x $i ]
	then
	countx=`expr $countx + 1`
	fi
echo “Number of executable files are $countx”