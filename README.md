# hello Lua!

This is a simple hello-world module for Lua, intended for learning
about writing modules in C.

It shows how to:

* Make the C module
* Make a basic Makefile to compile it
* Make a rockspec to distribute it with [LuaRocks](http://www.luarocks.org/)
* Make a test program to test it

Compiling and running under Ubuntu 21.04 should work on other distros with lua 5.3 and above

### Dependencies:

* lua5.3
* liblua5.3-dev
* luarocks

For other lua versions edit ==LUA_VER== on Makefile accordingly

### Usage:

```
$ cd hello-lua
$ make
$ lua test.lua
```

#### For Lua Rocks:

```
$ sudo make rock
```
