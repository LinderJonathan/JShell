CC=gcc
CFLAGS=-Ilib
DEPS=lib/global.h lib/jshell.h lib/util.h
OBJECTS=jshell.o src/util.o

jshell.o: jshell.c $(DEPS)
	$(CC) -c jshell.c -o jshell.o $(CFLAGS)

src/util.o: src/util.c $(DEPS)
	$(CC) -c src/util.c -o src/util.o $(CFLAGS)

all: $(OBJECTS)
	$(CC) jshell.o src/util.o -o bin/jshell