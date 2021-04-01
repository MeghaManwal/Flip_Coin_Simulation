#!/bin/bash  


Heads=1
TAILS=0
read -p "Enter the number of times you want to flip a coin: " n

for((i=1;i<=n;i++))
do
   Result=$((RANDOM%2))
	if [ ${Result} -eq $Heads ]
         then
    	   echo "HEADS"
		N=$((++HEADS))
	 else
    	   echo "TAILS"
		M=$((++TAILS))
	fi
done

echo "Heads Appear: "$N "Times"
echo "Tails Appear: "$M "Times"
