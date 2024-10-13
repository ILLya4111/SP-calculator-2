# Variables
CXX = g++
CXXFLAGS = -std=c++11 -Wall
LIBRARY = libcalculator.a
SHARED_LIB = libcalculator.so
EXECUTABLE = main
OBJ = main.o calculator.o

# Default target
all: $(LIBRARY) $(EXECUTABLE)

# Rule to create static library
$(LIBRARY): calculator.o
	ar rcs $(LIBRARY) calculator.o

# Rule to create shared library
$(SHARED_LIB): calculator.o
	$(CXX) -shared -o $(SHARED_LIB) calculator.o

# Rule to create executable
$(EXECUTABLE): main.o $(LIBRARY)
	$(CXX) $(CXXFLAGS) -o $(EXECUTABLE) main.o -L. -lcalculator

# Object files
main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c main.cpp

calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c calculator.cpp

# Clean rule
clean:
	rm -f $(OBJ) $(EXECUTABLE) $(LIBRARY) $(SHARED_LIB)
