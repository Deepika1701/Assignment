declare -A store
for((dice=1;dice<=6;dice++))
do
    store["Dice"$dice]=$(((RANDOM%5)+1))
done

echo ${store[@]}
