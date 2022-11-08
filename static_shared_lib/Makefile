
#INCLUDE = -Ilib/include -Iinclude #여러 폴더
INCLUDE = -Ilib/include
LIB_DIR = -Llib
LIBS = -lfoobar

TARGET = main

all: main

$(TARGET):
	g++ main.cc $(INCLUDE) -static $(LIB_DIR) $(LIBS) -g -o $(TARGET)
#	g++ main.cc $(INCLUDE) -static lib/libfoobar.so -g -o $(TARGET)
#	g++ main.cc $(INCLUDE) lib/libfoobar.a -o $(TARGET)

.PHONY: clean all
clean:
	rm -f $(TARGET)
