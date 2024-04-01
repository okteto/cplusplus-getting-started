build:
	g++ -g -o hello-world -Iheaders hello-world.cpp

debug:
	gdbserver :2345 ./hello-world

start:
	./hello-world