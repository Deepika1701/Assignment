for((i=0;i<5;i++))
do
   arr[$i]=$(((RANDOM%900)+100))
   echo ${arr[i]}
done

if [ ${arr[0]} -gt ${arr[1]} ]
then
    max=${arr[0]}
    min=${arr[1]}
else
    max=${arr[1]}
    min=${arr[0]}
fi

for((i=2;i<=4;i++))
do
   if [ $max -lt ${arr[i]} ]
   then
      max=${arr[i]}
   fi
done

for((i=2;i<=4;i++))
do
   if [ $min -gt ${arr[i]} ]
   then
      min=${arr[i]}
   fi
done

echo "Greatest value is=" $max
echo "Smallest value is=" $min
