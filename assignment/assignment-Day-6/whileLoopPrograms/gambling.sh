i=1
rupee=100
nbets=0
winbet=0
losebet=0
while (($i))
do
   random=$((RANDOM%2))
   if (($random==1))
   then
      ((rupee++))
      ((winbet++))
   else
      ((rupee--))
      ((losebet++))
   fi
   
   if (($rupee==0))
   then
      echo "You lose all your money in gambling, **Better Luck next time**"
      break
   fi
   if (($rupee==200))
   then
      echo "Congrats you win!! - you win $winbet times and lose $losebet times in a total bet of $nbets"
      break
   fi
   ((i++))
   ((nbets++))
done
