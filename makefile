README.md:
	touch README.md
	echo "# Guessing game using shell  " > README.md
	echo "Make was run at  " >> README.md
	date >> README.md
	echo "  The number of lines contained in guessingGame.sh is: $$(wc -l < guessingGame.sh)" >> README.md

