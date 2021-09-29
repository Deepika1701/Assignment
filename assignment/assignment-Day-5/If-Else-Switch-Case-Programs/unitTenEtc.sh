read -p "Enter number like 1,10,100,1000 :- " x

if [ $x -eq 1 ]
then
   echo "Unit"
elif [ $x -eq 10 ]
then
   echo "Ten"
elif [ $x -eq 100 ]
then
   echo "Hundred"
elif [ $x -eq 1000 ]
then
   echo "Thousand"
else
   echo "Invalid number"
fi

