#!/usr/bin/env bash	

function getmessage {
	local guess=$1
	local real=$2

	if [[ $guess -gt $real ]]
		then echo "too high"
		else echo "too low"
	fi
}

function game {
	local guessed=0
	local numberoffiles=$( ls -l | wc -l )
	echo "Enter the number of the files in the directory"

	while [[ $guessed -eq 0 ]]
	do 
		read number 
		
		if [[ $number -eq $numberoffiles ]]	
		then 
			echo "The number of files is right! Congratulations!"
			let guessed=1
		elif [[ $number =~ [^0-9] ]]
			then echo "please, enter a natural number N (N >= 0)" 
		else 
			message=$( getmessage $number $numberoffiles )
			echo "A number is $message"
		fi
done 
}

game


