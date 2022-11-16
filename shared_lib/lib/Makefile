CC = g++
#CXXFLAGS = -fPIC -Wall -O2
CXXFLAGS = -Wall -O2

INCLUDE = -I./include
SRC_DIR = ./src
OBJ_DIR = ./obj

SRCS = $(notdir $(wildcard $(SRC_DIR)/*.cc))
OBJS = $(SRCS:.cc=.o)
OBJECTS = $(patsubst %.o, $(OBJ_DIR)/%.o, $(OBJS))
DEPS = $(OBJS:.o=.d)

TARGET = foobar

all: foobar

$(OBJ_DIR)/%.o : $(SRC_DIR)/%.cc
	$(CC) $(CXXFLAGS) $(INCLUDE) -c $< -o $@ -MD

$(TARGET) : $(OBJECTS)
	$(CC) -shared $(OBJECTS) -o lib$(TARGET).so
#	ar crf lib$(TARGET).a $(OBJECTS)

.PHONY: clean all
clean:
	rm -f $(OBJECTS) $(DEPS) lib$(TARGET).so
#	rm -f $(OBJECTS) $(DEPS) lib$(TARGET).a
