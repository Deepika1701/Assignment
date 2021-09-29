echo "Enter the limit of harmonic series : "
read n
sum=0
for((i=1;i<=n;i++))
do
        printf "1/$i + "
        sum=`echo "scale=10; $sum+(1/$i)" | bc`
        ((k++))
done

echo "  "
echo "Harmonic number Hn = $sum"
