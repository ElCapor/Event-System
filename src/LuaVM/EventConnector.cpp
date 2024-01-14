#include "EventConnector.hpp"
#include <lua.hpp>
LuaClosureID EventConnector::Connect(LuaClosure closure)
{
    m_Closures.emplace_back(closure);
    EventManager::getInstance().Subscribe(type, this);
    return 1;
}

void EventConnector::OnEvent(Event *recieved)
{
    if (recieved->m_type == type)
    {
        for (auto &closure : m_Closures)
        {
            closure.CallFunc(LuaVM::getInstance()->GetState());
        }
    }
}


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