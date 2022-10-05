kalkul.exe: calculate.o main.o
	gcc calculate.o main.o -o kalkul.exe -lm
calculate.o: calculate.c calculate.h
	gcc -c calculate.c
main.o: main.c calculate.h
	gcc -c main.c
clean:
	rm -f kalkul.exe calculate.o main.o
install:
	cp kalkul.exe /usr/local/bin/kalkul.exe
uninstall:
	rm -f /usr/local/bin/kalkul.exe
