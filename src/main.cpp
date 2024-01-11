#include <raylib.h>
#include "events.hpp"
#include <iostream>
#include <string>
#include <assert.h>
#include "LuaVM/LuaVM.hpp"
#include "LuaVM/EventConnector.hpp"
/*

GENERAL TODO:

Convert Singleton to return pointers
Convert EventSystem to use templates

GENERAL NOTES :
never send structures through pointers when inside lua bound functions or else the memory will fuck up


*/



class TestEvent : public Event
{
public:
    TestEvent() : Event(EventType::e_TestEvent)
    {
    }
};

class TestEventListener : public EventListener
{
public:
    TestEventListener()
    {
    }
    void OnEvent(Event *recieved) override
    {
        switch (recieved->m_type)
        {
        case e_TestEvent:
            TestEvent *evt = reinterpret_cast<TestEvent *>(recieved);
            std::cout << "Recieved test event" << std::endl;
            break;
        }
    }
};

LuaClosureID LuaClosure::maxID = -1;

auto DestroyConnector = [](lua_State* L) -> int
{
    EventConnector* obj = (EventConnector*)lua_touserdata(L, -1);
    delete obj;
    return 0;

};

auto IndexConnector = [](lua_State* L) -> int
{
    assert(lua_isuserdata(L, -2));// i want full userdata or kys
    assert(lua_isstring(L, -1)); // cant index shit with no name fr

    EventConnector* obj = (EventConnector*)lua_touserdata(L, -2);
    const char* index = lua_tostring(L, -1);

    if (strcmp(index, "Type") == 0)
    {
        lua_pushinteger(L, (int)obj->type);
        return 1;
    }
    else {
        lua_getglobal(L, "EventConnector");
        lua_pushstring(L, index);
        lua_rawget(L, -2); // this will return nil
        return 1;

    }
};

auto ConnectEvent = [](lua_State* L) -> int
{
    luaL_checkudata(L, 1, "EventConnectorMetatable");
    luaL_checktype(L, 2, LUA_TFUNCTION);
    EventConnector* obj = (EventConnector*)lua_touserdata(L, -2);
    LuaClosure cl = LuaClosure();
    cl.ref = luaL_ref(L, LUA_REGISTRYINDEX);
    obj->Connect(cl);
    lua_pushinteger(L, cl.id);
    return 1;
};
void RegisterConnectorLua(lua_State* L)
{
    lua_newtable(L);
    auto idk = lua_gettop(L);
    lua_pushvalue(L, idk);
    lua_setglobal(L, "EventConnector");

    lua_pushcfunction(L, ConnectEvent);
    lua_setfield(L, -2, "Connect");

    luaL_newmetatable(L, "EventConnectorMetatable");
    lua_pushstring(L, "__gc");
    lua_pushcfunction(L, DestroyConnector);
    lua_settable(L, -3);

    lua_pushstring(L, "__index");
    lua_pushcfunction(L, IndexConnector);
    lua_settable(L, -3);
}

class FunnyObject
{
public:
    std::string name;
    int value;
    EventConnector OnCreate; // when the object is created

    FunnyObject()
    {
        OnCreate = EventConnector(EventType::e_FunnyObjectCreate);
        this->name = "Test";
        this->value = 3;
    }
};

auto DestroyObject = [](lua_State* L) -> int
{
    FunnyObject* obj = (FunnyObject*)lua_touserdata(L, -1);
    delete obj;
    return 0;

};

auto IndexObject = [](lua_State* L) -> int
{
    assert(lua_isuserdata(L, -2));// i want full userdata or kys
    assert(lua_isstring(L, -1)); // cant index shit with no name fr

    FunnyObject* obj = (FunnyObject*)lua_touserdata(L, -2);
    const char* index = lua_tostring(L, -1);
    if (strcmp(index, "name") == 0)
    {
        lua_pushstring(L, obj->name.c_str());
        return 1;
    }
    if (strcmp(index, "value") == 0)
    {
        lua_pushinteger(L, obj->value);
        return 1;
    }
    if (strcmp(index, "OnCreate") == 0)
    {
        lua_pushlightuserdata(L, &obj->OnCreate);
        luaL_getmetatable(L, "EventConnectorMetatable");
        lua_setmetatable(L, -2);
        return 1;
    }
    return 0;
};



void RegisterObjectLua(lua_State *L)
{
    lua_newtable(L);
    auto idk = lua_gettop(L);
    lua_pushvalue(L, idk);
    lua_setglobal(L, "FunnyObject");

    luaL_newmetatable(L, "FunnyObjectMetaTable");
    lua_pushstring(L, "__gc");
    lua_pushcfunction(L, DestroyObject);
    lua_settable(L, -3);

    lua_pushstring(L, "__index");
    lua_pushcfunction(L, IndexObject);
    lua_settable(L, -3);
}

namespace globals{
    FunnyObject object;
};



void LuaVM::Init()
{
    luaState = luaL_newstate();
    luaL_openlibs(luaState);

    RegisterConnectorLua(luaState);
    RegisterObjectLua(luaState);

    lua_pushlightuserdata(luaState, &globals::object);
    luaL_getmetatable(luaState, "FunnyObjectMetaTable");
    lua_setmetatable(luaState, -2);
    lua_setglobal(luaState, "Object");
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
        print(Object.name)
        print(Object.OnCreate:Connect(function() print("hi") end))
    )";
    LuaVM::getInstance().RunScriptSafe(script, err);
    std::cout << err.errorMsg << std::endl;
}

lua_State*& LuaVM::GetState()
{
    return this->luaState;
}


int main()
{

    TestEvent evt = TestEvent();
    TestEventListener tev = TestEventListener();
    EventManager::getInstance().Subscribe(EventType::e_TestEvent, &tev);

    //InitWindow(800, 600, "EventSystem");
    //SetTargetFPS(60);
    EventManager::getInstance().SendEvent(&evt);

    //auto lua_conn = EventConnector(EventType::e_LuaEvent);
    //lua_conn.Connect();
    Event lua_ev = Event(EventType::e_FunnyObjectCreate);
    EventManager::getInstance().SendEvent(&lua_ev);
    globals::object = FunnyObject();
    LuaVM::getInstance().Init();
    LuaVM::getInstance().RunUnitTests();

    EventManager::getInstance().SendEvent(&lua_ev);
    /*    
    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(WHITE);
        EndDrawing();
    }
    CloseWindow();*/
    return 0;
}