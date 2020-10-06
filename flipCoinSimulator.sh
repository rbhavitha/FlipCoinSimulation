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
