#ifndef LUAVM_HPP
#define LUAVM_HPP
#include <string>
#include <lua.hpp>
#include "../Singleton.hpp"

typedef struct
{
    int line; // code line the error is at
    std::string errorMsg;
} LuaErrorStruct;


class LuaVM : public Singleton<LuaVM>
{
public:
    lua_State* luaState;

    void Init();
    bool RunScriptSafe(std::string script, LuaErrorStruct &errorStruct); // prevent rce and allow to return error type & numbers
    void RunUnitTests();
    lua_State*& GetState();
};

#endif