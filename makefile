README.md: guessinggame.sh
	echo "# Guessing game" > README.md
	echo "Date and time: " >> README.md
	date >> README.md
	echo "<br/>Number of lines in guessinggame.sh: " >> README.md
	wc -l < guessinggame.sh >> README.md
