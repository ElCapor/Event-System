#include "LuaVM.hpp"
#include "EventConnector.hpp"
void LuaVM::Init()
{
    luaState = luaL_newstate();
    luaL_openlibs(luaState);
    RegisterConnectorLua(luaState);
}

bool LuaVM::RunScriptSafe(std::string script, LuaErrorStruct &errorStruct) // prevent rce and allow to return error type & numbers
{
    if (luaL_loadstring(luaState, script.c_str()) == LUA_OK)
    {
        if (lua_pcall(luaState, 0, LUA_MULTRET, 0) != LUA_OK)
        {
            goto PostError;
        }
        return true;
    }
    else
    {
        goto PostError;
    }

PostError:
    const char *errorStr = lua_tostring(luaState, -1);
    if (errorStr != nullptr)
    {
        std::string errorfr = std::string(errorStr);
        int line = errorfr.find("]:") + 2;
        int codeline = std::atoi((errorfr.substr(line, errorfr.find(":", line) - line)).c_str());
        errorStruct.line = codeline;
        int line2 = errorfr.find(":", line) + 1;
        errorStruct.errorMsg = errorfr.substr(line2);
        lua_pop(luaState, 1);
        return false;
    }
    else
    {
        return false;
    }
}

void LuaVM::RunUnitTests()
{
    LuaErrorStruct err;
    const char *script = R"(
    )";
    LuaVM::getInstance()->RunScriptSafe(script, err);
    std::cout << err.errorMsg << std::endl;
}

lua_State*& LuaVM::GetState()
{
    return this->luaState;
}