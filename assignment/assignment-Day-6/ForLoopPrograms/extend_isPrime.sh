read -p "enter range of array:-" n
array=()
for((i=2;i<n;i++))
do
   while [ $((n%i)) == 0 ]
   do
      for((j=2;j<n-1;j++))
      do
          if [[ $((i%j)) == 0 ]]
          then
            #echo $i
            array=$((array+i))
          fi
      done
     n=$((n/i))
     i=$((i+1))
   done
done
echo "prime factors are ${array[@]}"

