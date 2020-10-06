#!/bin/bash -x

echo "Flip Coin Simulation"

FlipCoin=$(( $RANDOM%2 ))
if [ $FlipCoin -eq 0 ]
then
	echo "Head is winner"
else
	echo "Tail is winner"
fi

headcount=0
tailcount=0
while [[ $headcount -lt 21 && $tailcount -lt 21 ]]
do
	FlipCoin=$(( $RANDOM%2 ))
	if [ $FlipCoin -eq 0 ]
	then
		echo "Head is winner"
		headcount=$(($headcount+1))
	else
		echo "Tail is winner"
		tailcount=$(($tailcount+1))
	fi
done
echo "Number of times Heads has won:" $headcount
echo "Number of times Tails has won:" $tailcount

if [ $headcount -gt $tailcount ]
then
	echo "head won"
	echo "head won by count of:" $headcount
elif [ $headcount -lt $tailcount ]
then
	echo "tail won"
	echo "tail won by count of:" $tailcount
else
	echo "tie"
fi
