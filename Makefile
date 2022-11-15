# Put this in the build directory and run it there
PROG = demo
SRC = ../src
OBJS = main.o helloworld.o

CXX = g++
CFLAGS = `pkg-config gtkmm-4.0 --cflags`
LIBS = `pkg-config gtkmm-4.0 --libs`
CPPSTD = c++17

$(PROG): $(OBJS)
	$(CXX) $(OBJS) $(LIBS) -o $(PROG)
	
main.o: $(SRC)/main.cpp 
	$(CXX) -c --std=$(CPPSTD) $(CFLAGS) $(SRC)/main.cpp -o main.o
		
helloworld.o: $(SRC)/helloworld.cpp 
	$(CXX) -c --std=$(CPPSTD) $(CFLAGS) $(SRC)/helloworld.cpp -o helloworld.o


clean:
	rm -f $(OBJS) $(PROG)

test: $(PROG)
	./$(PROG0
