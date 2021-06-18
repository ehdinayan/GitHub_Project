README.md : guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	echo "## Today is:" >> README.md
	date >> README.md
	echo "## The code has the following number of lines:" >> README.md
	wc -l guessinggame.sh >> README.md

clean :
	rm README.md

