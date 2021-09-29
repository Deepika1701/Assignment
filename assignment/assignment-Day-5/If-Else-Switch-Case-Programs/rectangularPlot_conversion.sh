read -p "Enter length of rectangular plot:- " l
read -p "Enter breadth of rectangular plot:- " b
squareFeetArea=`echo "scale=2; $l*$b" | bc`
areaInMeters=`echo "scale=2; $squareFeetArea*0.3*0.3" | bc`
echo "Area of plot in square feet :- "$squareFeetArea
echo "Area of plot in meters square :- "$areaInMeters
