#!/usr/bin/lua
package.cpath = "./?.so"
hello = require "hello"

print("hello from lua")
print(hello.say_hello())