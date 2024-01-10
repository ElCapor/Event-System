#include <raylib.h>
#include "events.hpp"
#include <iostream>
#include <lua.hpp>
#include <vector>
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
    void OnEvent(Event* recieved) override
    {
        switch (recieved->m_type)
        {
            case e_TestEvent:
                TestEvent* evt = reinterpret_cast<TestEvent*>(recieved);
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
    lua_State* luaState;
    void Init()
    {
        luaState = luaL_newstate();
        luaL_openlibs(luaState);
    }

    bool RunScriptSafe(std::string script, LuaErrorStruct& errorStruct) // prevent rce and allow to return error type & numbers
    {
        if (luaL_loadstring(luaState, script.c_str()) == LUA_OK)
        {
            if (lua_pcall(luaState, 0, LUA_MULTRET, 0) != LUA_OK)
            {
                goto PostError;
            }
            return true;
        }
        else {
            goto PostError;
        }

    PostError:
        const char* errorStr = lua_tostring(luaState, -1);
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
        else {
            return false;
        }
    }

    void RunUnitTests()
    {
        LuaErrorStruct err;
        const char* script = R"(

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
LuaClosureID id; // id of current closure
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
EventType type; // type of the event we connect to
std::vector<LuaClosure> m_Closures; // list of connected closures

EventConnector(EventType tp) : type(tp)
{
}

// -1 if not working
LuaClosureID Connect()
{
    m_Closures.emplace_back(LuaClosure());
    EventManager::getInstance().Subscribe(type, this);
}

// -1 if not working
bool Disconnect()
{

}

void OnEvent(Event* recieved) override
{
    switch (recieved->m_type)
    {
        if (recieved->m_type == type)
        {
            for (auto& closure : m_Closures)
            {
                closure.CallFunc();
            }
        }
    }
}

};

int main()
{
    
    TestEvent evt = TestEvent();
    TestEventListener tev = TestEventListener();
    EventManager::getInstance().Subscribe(EventType::e_TestEvent, &tev);

    InitWindow(800, 600, "EventSystem");
    SetTargetFPS(60);
    EventManager::getInstance().SendEvent(&evt);

    auto lua_conn = EventConnector(EventType::e_LuaEvent);
    EventManager::getInstance().SendEvent(&evt);
    while (!WindowShouldClose())
    {
        BeginDrawing();
        ClearBackground(WHITE);
        EndDrawing();
    }
    CloseWindow();
    return 0;
}