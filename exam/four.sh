echo "enter the marks:"
read marks

if [ $marks -eq 100 ]
then 
echo "excellent"
elif [ $marks -gt 85 ]
then
echo "A+ gread"
elif [ $marks -gt 75 ]
then
echo "A gread"
elif [ $marks -gt 60 ]
then 
echo "B gread"
elif [ $marks -gt 50 ]
then 
echo "C gread"
elif [ $marks -gt 40 ]
then 
echo "D gread"
elif [ $marks -lt 40 ]
then 
echo "You are Fail"
else
echo "sorry invalied input"
fi
