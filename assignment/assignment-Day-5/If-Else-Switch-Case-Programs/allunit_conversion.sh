echo "Please Choose a number from 1-4"
echo "1:- Feet to Inches"
echo "2:- Feet to Meter"
echo "3:- Inches to Feet"
echo "4:- Meter to Feet"
read num
case $num in
[1])
echo "Enter a value in Feet to convert into Inches"
read feet
inches=$((feet*12))
echo $feet "Feet =" $inches "Inches" ;;
[2])
echo "Enter a value in Feet to convert into Meters"
read feet
meters=`echo "scale=2; $feet/3.28" | bc`
echo $feet "Feet =" $meters "Meters" ;;
[3])
echo "Enter a value in Inches to convert into Feet"
read inches
feet=`echo "scale=2; $inches/12" | bc`
echo $inches "Inches =" $feet "Feet" ;;
[4])
echo "Enter a value in Meter to convert into Feet"
read meters
feet=`echo "scale=2; $meters*3.28" | bc`
echo $meters "Meters =" $feet "Feet" ;;
*)
echo "Your Input is Invalid" ;;
esac
