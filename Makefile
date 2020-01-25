CC=gcc
FLAGS= -Wall -g

all:tried maind frequency tries

tries:libtrie.a

tried:libtrie.so

libtrie.a:trie.o trie.h
	 ar rcs libtrie.a trie.o trie.h

libtrie.so:trie.o   trie.h
	$(CC) -shared -o libtrie.so  trie.o

trie.o: trie.c trie.h 
	$(CC) -fPIC -c trie.c

frequency:main.o libtrie.a
	$(CC) $(FLAGS) -o  frequency main.o libtrie.a 

maind:main.o libtrie.so
	$(CC) $(FLAGS) -o maind main.o ./libtrie.so 

main.o:main.c trie.h
	$(CC) -c main.c

.PHONY:clean 

clean:
	rm -f *.o *.a *.so frequency maind

