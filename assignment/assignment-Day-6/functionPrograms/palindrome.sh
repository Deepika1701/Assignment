checkPalindrome() {
    s=$1
        while [ $1 -gt 0 ]
        do
            rem=$((i%10))
            rev=$((rev*10+rem))
            i=$((i / 10))
        done


    if [[ $rev -eq $num1 && $rev -eq $num2 ]]
    then
        count=0
    else
        count=1
    fi
   echo $count
}

echo "Enter two number:"
read -p "  "a
read -p "  "b

y="$x"
num1="$a"
num2="$b"
rem=""
rev=0
for word in $y;
do
    if checkPalindrome "$word"
    then
        echo "$word is palindrome"
    fi
done
