CC=gcc
CFLAGS=-I. -Wall -std=gnu11 -static
DEPS= 
OBJ=spectre.o

all: $(OBJ)

%.o: %.c $(DEPS)
	$(CC) -o $@ $< $(CFLAGS)

install:
	install -s $(OBJ) spectre

.PHONY : clean
clean:
	rm $(OBJ)
