JOB=jtemplate

all: pdf

pdf: main.tex
	-astyle */*/*.c -A2 --indent=spaces=2
	-astyle */*/*/*.c -A2 --indent=spaces=2
	-astyle */*.cc -A2 --indent=spaces=2
	-astyle */*/*.cc -A2 --indent=spaces=2
	-astyle */*/*/*.cc -A2 --indent=spaces=2
	-astyle */*.java -A2 --indent=spaces=2
	-astyle */*/*.java -A2 --indent=spaces=2
	-astyle */*/*/*.java -A2 --indent=spaces=2
	xelatex -jobname=$(JOB) main.tex
	xelatex -jobname=$(JOB) main.tex

clean:
	rm -f *.aux *.log *.out *.toc
	