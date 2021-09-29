
arith[0]=`echo "scale=7; $(($1+($2*$3)))" | bc`
arith[1]=`echo "scale=5; $((($1%$2)+3))" | bc`
arith[2]=`echo "scale=6; $(($3+($1/$2)))" | bc`
arith[3]=`echo "scale=4; $((($1*$2)+$3))" | bc`

echo "Numbers in original form:" ${arith[@]}

for((i=0;i<4;i++))
do
        for((j=0;j<=2-i;j++))
        do
                if [[ ${arith[j]} -gt ${arith[$((j+1))]} ]]
                then
                        temp1=${arith[j]}
                        temp2=${arith[$((j+1))]}
                        temp3=$((temp1+temp2))

                        arith[$j]=$((temp3-temp1))
                        arith[$((j+1))]=$((temp3-temp2))
                fi
        done
done

echo "Sorted numbers list is:" ${arith[*]}
echo "Min: " ${arith[0]}
echo "Max:" ${arith[-1]}
