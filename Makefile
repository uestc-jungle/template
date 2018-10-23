JOB=jtemplate

all: pdf

pdf: main.tex
	-zsh -c 'astyle **/*.c -A2 --indent=spaces=2'
	-zsh -c 'astyle **/*.cc -A2 --indent=spaces=2'
	-zsh -c 'astyle **/*.java -A2 --indent=spaces=2'
	xelatex -jobname=$(JOB) main.tex
	xelatex -jobname=$(JOB) main.tex
	xelatex -jobname=$(JOB) main.tex

clean:
	rm -f *.aux *.log *.out *.toc
