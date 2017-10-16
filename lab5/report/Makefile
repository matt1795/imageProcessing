# Proposal makefile

CC=pdflatex
NAME=lab3
FLAGS= -output-directory build -jobname $(NAME) -file-line-error

all: clean output

clean:
	-rm ../../output/$(NAME).pdf

output: doc
	mv build/$(NAME).pdf ../../output/

doc:
	-$(CC) $(FLAGS) main.tex
