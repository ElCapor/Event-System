#include <raylib.h>
#include "events.hpp"
#include <iostream>
#include <lua.hpp>
#include <vector>
#include <string>
#include <assert.h>
/*

GENERAL TODO:

Convert Singleton to return pointers

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

typedef struct
{
    int line; // code line the error is at
    std::string errorMsg;
} LuaErrorStruct;

class LuaVM : Singleton<LuaVM>
{
public:
    lua_State *luaState;
    void Init()
    {
        luaState = luaL_newstate();
        luaL_openlibs(luaState);
    }

    bool RunScriptSafe(std::string script, LuaErrorStruct &errorStruct) // prevent rce and allow to return error type & numbers
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

    void RunUnitTests()
    {
        LuaErrorStruct err;
        const char *script = R"(

        )";
        LuaVM::getInstance().RunScriptSafe(script, err);
        std::cout << err.errorMsg << std::endl;
    }
};

using LuaClosureID = int;

// abstract class to represent a lua closure
class LuaClosure
{
public:
    static LuaClosureID maxID; // maxID used
    LuaClosureID id;           // id of current closure
    LuaClosure()
    {
        maxID++;
        id = maxID;
    }
    void CallFunc()
    {
        std::cout << "call lua closure" << std::endl;
    }
};
LuaClosureID LuaClosure::maxID = -1;

// abstract class to represent a connection to an event withnin lua
// NOTE : no subscribe feature because eventconnector only connect to 1 event
class EventConnector : public EventListener
{
public:
    EventType type;                     // type of the event we connect to
    std::vector<LuaClosure> m_Closures; // list of connected closures

    EventConnector()
    {
        type = EventType::e_NoneTypeEvent;
    }
    EventConnector(EventType tp) : type(tp)
    {
    }

    // -1 if not working
    LuaClosureID Connect()
    {
        m_Closures.emplace_back(LuaClosure());
        EventManager::getInstance().Subscribe(type, this);
        return 1;
    }

    // -1 if not working
    bool Disconnect()
    {
    }

    void OnEvent(Event *recieved) override
    {
        if (recieved->m_type == type)
        {
            for (auto &closure : m_Closures)
            {
                closure.CallFunc();
            }
        }
    }
};

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
    lua_getglobal(L, "EventConnector");
    lua_pushstring(L, index);
    lua_rawget(L, -2); // this will return nil
    return 1;



};

void RegisterConnectorLua(lua_State* L)
{
    lua_newtable(L);
    auto idk = lua_gettop(L);
    lua_pushvalue(L, idk);
    lua_setglobal(L, "EventConnector");

    luaL_newmetatable(L, "EventConnectorMetaTable");
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



};


auto ConnectEvent = [](lua_State* L) -> int
{

};

void RegisterObjectLua(lua_State *L)
{
    lua_newtable(L);
    auto idk = lua_gettop(L);
    lua_pushvalue(L, idk);
    lua_setglobal(L, "FunnyObject");

    lua_pushcfunction(L, ConnectEvent);
    lua_setfield(L, -2, "Connect");

    luaL_newmetatable(L, "FunnyObjectMetaTable");
    lua_pushstring(L, "__gc");
    lua_pushcfunction(L, DestroyObject);
    lua_settable(L, -3);

    lua_pushstring(L, "__index");
    lua_pushcfunction(L, IndexObject);
    lua_settable(L, -3);
}

int main()
{

    TestEvent evt = TestEvent();
    TestEventListener tev = TestEventListener();
    EventManager::getInstance().Subscribe(EventType::e_TestEvent, &tev);

    InitWindow(800, 600, "EventSystem");
    SetTargetFPS(60);
    EventManager::getInstance().SendEvent(&evt);

    auto lua_conn = EventConnector(EventType::e_LuaEvent);
    lua_conn.Connect();
    Event lua_ev = Event(EventType::e_LuaEvent);
    EventManager::getInstance().SendEvent(&lua_ev);
    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(WHITE);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}