all: docs/paper.pdf docs/paper.html

docs/paper.pdf:README.md
	pandoc $^ -o $@

docs/paper.html:README.md
	pandoc --standalone $^ -o $@
