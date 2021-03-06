all: testPart1 testPart2

testPart1: RNA.o Nussinov.cpp
	g++ RNA.o Nussinov.cpp -o testPart1

testPart2: ShortestPath.cpp
	g++ ShortestPath.cpp -o testPart2

RNA.o: RNA.h RNA.cpp
	g++ -c RNA.cpp -o RNA.o

testDisplay: node.o display_rna.cpp
	g++ node.o display_rna.cpp -o testDisplay

node.o: node.h node.cpp
	g++ -c node.cpp -o node.o

clean:
	rm -f RNA.o testPart1 testPart2
