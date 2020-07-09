readme.md: guessinggame.sh
	echo "## It's Time to Play the Guessing Game! ##" > readme.md
	echo " *-Jimmy Phan*" >> readme.md
	echo " **guessinggame.sh initiated time:**" >> readme.md
	ls -l readme.md | egrep -o "[A-S].+:[0-9]{2}" >> readme.md
	echo "**Number of lines in our guessinggame.sh**" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	
