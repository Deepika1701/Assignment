arr=()
for((i=1;i<=100;i++))
do
    if [ $(($i%11)) == 0 ]
    then
       arr+=($i)
    fi
done
echo "repeated numbers are :- "  ${arr[@]}
