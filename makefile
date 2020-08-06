README.md :
	echo "#The title of the project is : **'My first bash project'** \n" > README.md
	echo -n "The date when make was launched : \`" >> README.md
	date +"%F %T" >> README.md
	echo "\`\n" >> README.md
	echo -n "The number of lines of code in the file is : **" >> README.md
	grep -v -e "^$$" guessinggame.sh | wc -l >> README.md
	echo "**\n" >> README.md
	cp README.md index.md



clean :
	rm README.md