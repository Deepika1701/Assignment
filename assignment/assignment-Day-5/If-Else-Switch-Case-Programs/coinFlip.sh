Result=$((RANDOM%2))
if [ $Result -eq 0 ]
then
    echo "After coin flip, result is - HEAD"
else
    echo "After coin flip, result is - TAILS"
fi
