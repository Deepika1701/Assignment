
for((i=1;i<6;i++))
do
    numbers[$i]=$(((RANDOM%90)+10))
    sum=$((sum+(numbers[$i])))
done

avg=`echo "scale=2; $sum/5" | bc`

echo "Five random two digit numbers are:- "${numbers[@]}
echo "Total sum of these numbers are:- "$sum
echo "Average of these number is:- "$avg


