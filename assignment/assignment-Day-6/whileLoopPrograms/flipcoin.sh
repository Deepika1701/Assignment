Result=$((RANDOM%2))
count=0
while [ $count -le 11 ]
do
if [ $Result -eq 0 ]
then
    echo "After coin flip, result is - HEAD"
else
    echo "After coin flip, result is - TAILS"
fi
  ((count++))
done
