CC = g++
CXXFLAGS = -Wall -O2
LDFLAGS =

INCLUDE = -Iinclude/
SRC_DIR = ./src
OBJ_DIR = ./obj
TARGET = main

SRCS = $(notdir $(wildcard $(SRC_DIR)/*.cc))
OBJS = $(SRCS:.cc=.o)
#OBJS = foo.o bar.o main.o

OBJECTS = $(patsubst %.o,$(OBJ_DIR)/%.o,$(OBJS))
DEPS = $(OBJECTS:.o=.d)

all: main

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.cc
	$(CC) $(CXXFLAGS) $(INCLUDE) -c $< -o $@ -MD $(LDFLAGS)

$(TARGET) : $(OBJECTS)
	$(CC) $(CXXFLAGS) $(OBJECTS) -o $(TARGET) $(LDFLAGS)

.PHONY: clean all
clean:
	rm -f $(OBJECTS) $(DEPS) $(TARGET)

-include $(DEPS)


#%.o: %.cc
#	$(CC) $(CXXFLAGS) -c $<
#
#main : $(OBJS)
#	$(CC) $(CXXFLAGS) $(OBJS) -o main
#
#.PHONY: clean
#clean:
#	rm -f $(OBJS) main
#
#include $(OBJS:.o=.d)
