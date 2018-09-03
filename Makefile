all: mips

mips: trab1.o
	gcc -o mips trab1.o

trab1.o: trab1.c
	gcc -c trab1.c

clean:
	rm trab1.o mips