CC = gcc
CFLAGS = -Wall -Wextra -Iinclude -g
SRC = $(wildcard src/*.c)
LIBS = $(wildcard libs/*.a) -lm
TARGET = bin/worm

compile:
	$(CC) $(CFLAGS) $(SRC) $(LIBS) -o $(TARGET) $(LIBS)

run: compile
	./$(TARGET)
