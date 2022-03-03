package = "hello"
version = "scm-1"
source = {
  url = "git://github.com/bigembed/hello-lua.git"
}
description = {
  summary = "A hello-world C module for Lua",
  detailed = [[
    This is simple Lua module written in C, intended
    to help you learn how to write C modules.
  ]],
  license = "MIT/X11",
  homepage = "https://github.com/bigembed/hello-lua"
}
dependencies = {
  "lua >= 5.3"
}
build = {
  type = "builtin",
  modules = {
    hello = {
      sources = {"hello.c"}
    }
  }
}
