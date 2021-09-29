for((i=0;i<10;i++))
do
   arith[$i]=$(((RANDOM%900)+100))
   echo ${arith[i]}
done

for((i=0;i<9;i++))
do
small=${arith[$i]}
index=$i
for((j=i+1;j<10;j++))
do
if((arith[j]<small))
then
small=${arith[$j]}
index=$j
fi
done
temp=${arith[$i]}
arith[$i]=${arith[$index]}
arith[$index]=$temp
done

echo "Sorted numbers list is:" ${arith[*]}
echo "Min: " ${arith[1]}
echo "Max:" ${arith[-2]}
