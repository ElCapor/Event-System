#ifndef EVENTCONNECTOR_HPP
#define EVENTCONNECTOR_HPP
#include <vector>
#include "LuaVM.hpp"
#include "LuaClosure.hpp"
#include "../events.hpp"
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
    LuaClosureID Connect(LuaClosure closure);

    // -1 if not working
    bool Disconnect();

    void OnEvent(Event* recieved) override;
};

RegisterConnectorLua(lua_State* L);
#endif