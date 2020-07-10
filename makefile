README.md: guessinggame.sh
	echo "## It's Time to Play the Guessing Game! ##" > README.md
	echo " *-Jimmy Phan*" >> README.md
	echo " " >> README.md
	echo " **initiated time:** " >> README.md
	date >> README.md
	echo "**Number of lines in our guessinggame.sh** " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
