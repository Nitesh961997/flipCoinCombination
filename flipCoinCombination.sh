#!/bin/bash -x
heads=0
tails=0
toss=0
HH=0
TT=0
HT=0
TH=0
HHH=0
TTT=0
HHT=0
HTT=0
HTH=0
TTH=0
THT=0
THH=0
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
			for (( k=1; k<2; k++ ))
				do
					result3=$((RANDOM%2))
					if [[ $result1 -eq 1 && $result2 -eq 1 && $result3 -eq 1 ]]
						then
								echo heads heads heads
								((HHH++))
						elif [[ $result1 -eq 1 && $result2 -eq 1 && $result3 -eq 0 ]]
							then
								echo heads heads tails
								((HHT++))
						elif [[ $result1 -eq 1 && $result2 -eq 0 && $result3 -eq 1 ]]
							then
								echo heads tails heads
								((HTH++))
						elif [[ $result1 -eq 1 && $result2 -eq 0 && $result3 -eq 0 ]]
							then
								echo heads tails tails
								((HTT++))
						elif [[ $result1 -eq 0 && $result2 -eq 1 && $result3 -eq 1 ]]
							then
								echo tails heads heads
								((THH++))
						elif [[ $result1 -eq 0 && $result2 -eq 1 && $result3 -eq 0 ]]
							then
								echo  tails heads tails
								((THT++))
						elif [[ $result1 -eq 0 && $result2 -eq 0 && $result3 -eq 1 ]]
							then
								echo tails tails heads
								((TTH++))
						else
							echo tails tails tails
							((TTT++))
					fi
				done
			done	
	done
echo $heads
echo $tails
echo $toss
echo $HH
echo $TT
echo $HT
echo $TH
echo $HHH
echo $TTT
echo $HHT
echo $HTT
echo $HTH
echo $TTH
echo $THT
echo $THH
echo percentageOfHHH=$(echo "scale=2; $HHH/$toss*100" | bc)
echo percentageOfHHT=$(echo "scale=2; $HHT/$toss*100" | bc)
echo percentageOfHTH=$(echo "scale=2; $HTH/$toss*100" | bc)
echo percentageOfHTT=$(echo "scale=2; $HTT/$toss*100" | bc)
echo percentageOfTHH=$(echo "scale=2; $THH/$toss*100" | bc)
echo percentageOfTHT=$(echo "scale=2; $THT/$toss*100" | bc)
echo percentageOfTTH=$(echo "scale=2; $TTH/$toss*100" | bc)
echo percentageOfTTT=$(echo "scale=2; $TTT/$toss*100" | bc)
echo percentageOfHH=$(echo "scale=2; $HH/$toss*100" | bc)
echo percentaheOfHT=$(echo "scale=2; $HT/$toss*100" | bc)
echo percentaheOfTT=$(echo "scale=2; $TT/$toss*100" | bc)
echo percentageOfTH=$(echo "scale=2; $HT/$toss*100" | bc)
echo percentageOfHeads=$(echo "scale=2; $heads/$toss*100" | bc)
echo percentageOfTails=$(echo "scale=2; $tails/$toss*100" | bc)

