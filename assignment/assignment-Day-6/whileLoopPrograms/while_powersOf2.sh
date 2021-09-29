
echo "Table of powers of 2 is : "
for((n=0;n<=$1;n++))
do
        arr[n]=$((2**n))
done
echo ${arr[@]}
n=0
echo "Table of powers of 2 till 256 : "
while [ ${arr[n]} -lt 256 ]
do
    echo ${arr[n]}
    ((n++))
done
