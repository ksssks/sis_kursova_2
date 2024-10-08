CC = g++
CFLAGS = -Wall -g
LIB = libcalculator.a
OBJ = calculator.o main.o
TARGET = calculator

all: $(TARGET)

$(TARGET): $(OBJ) $(LIB)
	$(CC) $(CFLAGS) -o $(TARGET) main.o -L. -lcalculator

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c calculator.cpp

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) -c main.cpp

$(LIB): calculator.o
	ar rcs $(LIB) calculator.o

clean:
	rm -f *.o $(TARGET) $(LIB)