#!/bin/bash -x
echo "Table of powers of 2 is : "
for((num=0;num<=$1;num++))
do
        echo $((2**num))
done

