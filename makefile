CC = gcc
CFLAGS = -c -Wall -g
LDFLAGS = 

all: editor

editor:	depend input.o main.o 
	$(CC) $(LDFLAGS) -o editor main.o input.o

-include main.d input.d  

main.o:	main.c  input.o
	$(CC) $(CFLAGS) -o main.o main.c

input.o: input.c 
	$(CC) $(CFLAGS) -o input.o input.c

depend:
	$(CC) -MM $(CFLAGS) main.c > main.d
	$(CC) -MM $(CFLAGS) input.c > input.d

install: editor 
	cp editor /usr/bin/
	chmod 555 /usr/bin/editor
clean:
	rm -f *.o *.d 
	rm -f editor

