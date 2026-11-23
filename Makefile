CC = gcc
CFLAGS = -Wall -Wextra -Iinclude -g
SRC = $(wildcard src/*.c)
LIBS = -lm
TARGET = bin/worm

compile:
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LIBS)

run: compile
	./$(TARGET)