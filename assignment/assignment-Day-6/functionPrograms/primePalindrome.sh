echo "Enter a number to check for prime palindromes "
read number
rem=0
reverse=0

function pal()
{
    a=$1
    while [ $a -gt 0 ]
    do
       rem=$(($a%10))
       reverse=$(((reverse*10)+rem))
       a=$(($a/10))
    done
    echo $reverse
}

function prime()
{
    n=$1
    count=0
    prime=1
    for((i=2;i<n;i++))
    do
       if [[ $n%$i -eq 0 ]]
       then
           count=$count+1
       fi
    done
    if [[ $count -gt 0 ]]
    then
       prime=0
    fi
    echo $prime
}

value="$(prime number)"
if [[ $value -eq 1 ]]
then
   echo "the entered number is a prime "
else
   echo "the entered number is not a prime "
fi

palindrome="$(pal $number)"
echo "palindrome = $palindrome"
value2="$(prime palindrome)"

if [[ $value2 -eq 1 ]]
then
    echo "its palindrome is a prime "
else
    echo "its palindrome is not a prime "
fi
