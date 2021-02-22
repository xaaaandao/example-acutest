CC = gcc
CFLAGS = -g -w -Wall

main: main.o util.o
	$(CC) $(CFLAGS) -o main main.o util.o

unit_test: unit_test.o util.o
	$(CC) $(CFLAGS) -o unit_test, unit_test.o util.o

util.o: util.h util.c
	$(CC) $(CFLAGS) -c util.c   

clean:
	rm -f core *.o main unit_test