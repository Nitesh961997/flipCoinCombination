#!/bin/bash -x
heads=0
tails=0
toss=0
HH=0
TT=0
HT=0
TH=0
#singlet
for (( i=1; i<=100; i++))
	do
		result1=$((RANDOM%2))
		((toss++))
		if [ $result1 -eq 1 ]
			then
				echo heads is winner
				((heads++))
			else
				echo tails is winner
				((tails++))
		fi
		for (( j=1; j<2; j++ ))
			do
				result2=$((RANDOM%2))
				if [[ $result1 -eq 1 && $result2 -eq 1 ]]
					then
						echo heads heads
						((HH++))
					elif [[ $result1 -eq 1 && $result2 -eq 0 ]]
						then
							echo heads tails
							((HT++)) 
					elif [[ $result1 -eq 0 && $result2 -eq 0 ]]
						then
							echo tails tails
							((TT++))
					else	
						echo tails heads
							((TH++)) 
				fi
			done	
	done
echo $heads
echo $tails
echo $toss
echo $HH
echo $TT
echo $HT
echo $TH
percentageOfHH=$(echo "scale=2; $HH/$toss*100" | bc)
percentaheOfHT=$(echo "scale=2; $HT/$toss*100" | bc)
percentaheOfTT=$(echo "scale=2; $TT/$toss*100" | bc)
percentageOfTH=$(echo "scale=2; $HT/$toss*100" | bc)
percentageOfHeads=$(echo "scale=2; $heads/$toss*100" | bc)
percentageOfTails=$(echo "scale=2; $tails/$toss*100" | bc)

