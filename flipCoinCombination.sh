#!/bin/bash -x
heads=0
tails=0
toss=0
for (( i=1; i<=100; i++))
do
	result=$((RANDOM%2))
	((toss++))
	if [ $result -eq 1 ]
		then
			echo heads is winner
			((heads++))
		else
			echo tails is winner
			((tails++))
	fi
done
echo $heads
echo $tails
echo $toss
percentageOfHeads=$(echo "scale=2; $heads/$toss*100" | bc)
percentageOfTails=$(echo "scale=2; $tails/$toss*100" | bc)
echo
