function myfunc(){
        var=$(($1*4))
	echo $var
}
read m
read n

result="$( myfunc $(($m)) )"
result2="$( myfunc $(($n)) )"
if [ $result -eq 1 ]
then
        echo "Success"
else
        echo "Failure"
fi
if [ $result2 -eq 1 ]
then
        echo "Success"
else
        echo "Failure"
fi

