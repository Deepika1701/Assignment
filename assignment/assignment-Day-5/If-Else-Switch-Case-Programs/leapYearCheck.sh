read -p "Enter year to check if it is a leap year or not:- " year

function leapCheck()
{
   number=$(($1%$2))
   echo $number
}

x="$(leapCheck year 4)"
y="$(leapCheck year 100)"
z="$(leapCheck year 400)"

if [[ $x -eq 0 ]] && [[ $y -ne 0 ]] || [[ $z -eq 0 ]]
then
   echo "$year is a leap year "
else
   echo "$year is not a leap year "
fi
