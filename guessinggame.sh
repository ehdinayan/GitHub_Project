#!/usr/bin/env bash
#File: guessinggame.sh

#set -x

echo "Hellow! I would like to ask you for a guess about the number of FILES 
existing in current directory at the moment."

sleep 5

function tryagain {
 echo "Please type a number and press enter..."
 read response

 for element in $response
 do
	if [[ $element =~ [0-9] ]]
	then

		files=$( find . -type f | wc -l )
		if [[ $element -eq $files ]]
		then
			echo "You really Rock, Damn it!"
			exit 0

		elif [[ $element -gt $files ]]
		then
			echo "$element? You passed high"
			tryagain

		else 
			echo "$element? You got low"
			tryagain
		fi
	else

		echo "don't bother me with such a thing please, you now what to do..."
		tryagain
	fi
 done
}
tryagain


