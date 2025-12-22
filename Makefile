CC=gcc
CFLAGS=-Ilib
DEPS=lib/*.h
OBJECTS=jshell.o src/util.o

jshell.o: jshell.c $(DEPS)
	$(CC) -c jshell.c -o jshell.o $(CFLAGS)

src/%.o: src/%.c $(DEPS)
	$(CC) -c $< -o $@ $(CFLAGS)

all: $(OBJECTS)
	$(CC) jshell.o src/util.o -o bin/jshell