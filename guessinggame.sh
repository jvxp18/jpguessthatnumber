#!/usr/bin/env bash

function generateq {
	number=$(expr $RANDOM % 10 / 2 + 1)
	if [[ $number -eq 1 ]]
	then
		echo "Your guess is :"
	elif [[ $number -eq 2 ]]
	then
		echo "Give me your NUMBER!"
	elif [[ $number -eq 3 ]]
	then
		echo "What is your guess?"
	elif [[ $number -eq 4 ]]
	then
		echo "Your digit, please!"
	else 
		echo "Number *drum rolls* please!"
	fi	
}

function game {
echo "Hello user! WELCOME to THE GUESSING GAME!" 
echo "What is your name? (please print name on the console)"
read name
echo "Fantastic, $name, please have a seat if you haven't so already! It's time to play . . . the GUESSING GAME!"
generateq
read guess
files=$(ls . | wc -l)

	while [[ $guess -ne $files ]]

	do
		if [[ $guess -gt $files ]]
		then 
			echo "Sorry friend, that number is high! Try again!"	
		elif [[ $guess -lt $files ]]
		then
			echo "Too low! Again!"
		fi	

		read guess
	done

	echo "Congrats! You did it!"
}
game
