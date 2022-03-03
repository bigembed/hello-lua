LUA_VER=5.3
LUA_INC_DIR=$(shell pkg-config --cflags lua$(LUA_VER))
CFLAGS=-Wall -ggdb
TARGET_NAME=hello

LIBFLAGS= -shared -fpic

$(TARGET_NAME).so: $(TARGET_NAME).c
	$(CC) -o $(TARGET_NAME).so $(LIBFLAGS) $(CFLAGS) $(TARGET_NAME).c $(LUA_INC_DIR) -llua$(LUA_VER)

clean:
	$(RM) $(TARGET_NAME).so
	$(RM) $(TARGET_NAME).o

test: $(TARGET_NAME).so
	shake test.lua

rock:
	luarocks make hello-scm-1.rockspec
