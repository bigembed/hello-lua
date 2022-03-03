#include "lua.h"
#include "lauxlib.h"

#define MESSAGE "hello from C"

int say_hello(lua_State *L) {
    lua_pushstring(L, MESSAGE);
    return 1;
}

static const struct luaL_Reg functions [] = {
    {"say_hello", say_hello},
    {NULL, NULL}
};

int luaopen_hello(lua_State *L) {
    luaL_newlib(L,functions);
    return 1;
}
