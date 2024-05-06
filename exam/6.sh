hello(){
echo "my name is yash $1 $2"
echo "enter any value"
read value
return $value
}

hello gls university
ret=$2
echo "return value is $ret"
