#include "EventConnector.hpp"

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
            closure.CallFunc(LuaVM::getInstance().GetState());
        }
    }
}