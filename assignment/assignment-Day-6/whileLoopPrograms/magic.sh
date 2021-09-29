read -p "Enter a number between 1 to 100 :- "
start=1
end=100
mid=$(((start+end)/2))
while [ $mid -ge $start ] && [ $mid -le $end ]
do
    echo "If $mid is your number enter 1 otherwise 0"
    read r1
    if [[ $r1 -eq 1 ]]
    then
      echo "Your Magic Number is " $mid
    break
    else
       echo "If your number is greater than $mid enter 1 or 0 if less "
       read r2
      if [[ $r2 -eq 1 ]]
      then
          start=$mid
          end=$end
          mid=$(((start+end)/2))
      elif [[ $r2 -eq 0 ]]
      then
          start=$start
          end=$mid
          mid=$(((start+end)/2))
       fi
     fi
done

