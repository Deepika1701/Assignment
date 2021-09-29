read -p "enter number :-" num
p=1
for((i=1;i<=$num;i++))
do
    p=$((p*i))
done

echo "factorial of "$num "=" $p
