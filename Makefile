# Generate archive file.
analysis.tar.gz : isles.dat abyss.dat last.dat
	tar  -czf analysis.tar.gz isles.dat abyss.dat last.dat
# Count words.
.PHONY : dats
dats : isles.dat abyss.dat last

isles.dat : books/isles.txt
	python wordcount.py books/isles.txt isles.dat

abyss.dat : books/abyss.txt
	python wordcount.py books/abyss.txt abyss.dat

last.dat : books/last.txt
	python wordcount.py books/last.txt isles.dat

.PHONY : clean
clean :
	rm -f *.dat
	rm -f analysis.tar.gz
