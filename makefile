all:README.md

README.md: guessinggame.sh
	echo "The Unix Workbench Peer Graded Assignment" > README.md
	echo "Runtime: `date '+%d/%m/%Y:%H:%M:%S'` " >> README.md
	echo "Number of lines in guess.sh: " >> README.md
	cat guessinggame.sh | wc -l  >> README.md

clean: 
	rm README.md
