for i in *
do 
if [ ! -s $i ]
then
		rm $i 
		echo " $i removed "
fi
done