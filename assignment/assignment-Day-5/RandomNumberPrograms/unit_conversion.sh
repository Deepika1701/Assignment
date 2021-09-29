oneFeet=12
read -p "enter value to convert from inch to feet :- " inch
feet=`echo "scale=2; $inch/12" | bc`
echo "conversion from inch to feet :- "$feet
