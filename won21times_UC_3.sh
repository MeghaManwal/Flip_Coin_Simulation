#!/bin/bash 

Heads=1
TAILS=0
N=0
M=0
read -p "Enter the number of times you want to flip a coin: " n

for((i=1;i<=n;i++))
do
   Result=$((RANDOM%2))
    if [ $Result -eq $Heads ]
     then
      echo "HEADS"
        N=$((++HEADS))
      else
       echo "TAILS"
        M=$((++TAILS))
     fi

if [ $N -eq 21 ]
 then
  echo "Heads appear 21 times First and WON"
      echo "Heads won by: "$(($N-$M))
        break
elif [ $M -eq 21 ]
 then
   echo " Tails appear 21 times First and WON "
     echo "Tails won by: "$(($N-$M))
	 break
fi
done

echo "Heads: "$N "Tails: "$M
   if [ $N -eq $M ]
     then
       echo "Match Tie"
   fi

