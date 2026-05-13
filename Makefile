CXX = g++
CC = gcc
CXXFLAGS = -I. -fopenmp -O3
CFLAGS = -I. -O3
LDFLAGS = -fopenmp

C_SRCS = $(wildcard *.c)
CXX_SRCS = $(wildcard *.cpp)
OBJS = $(C_SRCS:.c=.o) $(CXX_SRCS:.cpp=.o)

TARGET = main

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(TARGET) $(OBJS)
