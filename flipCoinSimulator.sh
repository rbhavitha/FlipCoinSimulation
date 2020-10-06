#!/bin/bash -x

echo "Flip Coin Simulation"

#uc1 display head or tail as winner
FlipCoin=$(( $RANDOM%2 ))
if [ $FlipCoin -eq 0 ]
then
	echo "Head is winner"
else
	echo "Tail is winner"
fi

#uc2 show number of times head and tail has won
headcount=0
tailcount=0
for (( i=1; i<=10; i++ ))
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
