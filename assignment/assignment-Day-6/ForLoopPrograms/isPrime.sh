read -p "Enter a number to check if it is prime or not :-" n

count=0
for((i=1;i<=$n;i++))
do
    if [ $(($n%$i)) == 0 ]
    then
       ((count++))
    fi
done

if [ $count == 2 ]
then
    echo "this is a prime number " $n
else
    echo "this is not a prime number " $n
fi
