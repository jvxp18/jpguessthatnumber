#!/usr/bin/env bash

function game {
echo "Hello us$er! WELCOME to THE GUESSING GAME!" 
echo "What is your name? (please print name on the console)"
read name
echo "Fantastic, $name, please have a seat if you haven't so already! It's time to play . . . the GUESSING GAME!"
echo "Please give me an integer"
read guess
	
	while [[ ! ${guess#0} =~ ^[0-9]+$ ]] || [[ ${guess#0} > 2147483647 ]]
	do
		echo "positive integers and only. Try again"
		read guess
	done

files=$(ls -1bA | wc -l)
	

	while [[ ${guess#0} -ne $files ]]

	do
		if [[ ${guess#0} -gt $files ]]
		then 
			echo "Sorry friend, that number is high! Try again!"	
		elif [[ ${guess#0} -lt $files ]]
		then
			echo "Too low! Again!"
		fi
		read guess

		while [[ ! ${guess#0} =~ ^[0-9]+$ ]]
		do
			echo "positive integers only. try again"
			read guess
		done
		

	done

	echo "Congrats! You did it!"
}
game
