.PHONY: all clean

all: main

main: main.cpp
	g++ main.cpp -fopenmp -O3 -o main

clean:
	rm -rf main
