dice1=$(((RANDOM%5)+1))
dice2=$(((RANDOM%5)+1))
dice3=$((dice1+dice2))

echo "Dice 1 value="$dice1

echo "Dice 2 value="$dice2

echo "Sum of dice 1 and dice 2="$dice3
