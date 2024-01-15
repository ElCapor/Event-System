#pragma once
#ifndef EVENTS_HPP
#define EVENTS_HPP
#include <unordered_set>
#include <vector>
#include <map>
/*
https://www.linkedin.com/pulse/students-take-implementing-event-systems-games-using-matthew-rosen

Took the headers and implemented all the functions by myself - elcapor
*/

/*
SINGLETON Implementation
*/
#include "Singleton.hpp"  

template<typename T>
using UniqueContainer = std::unordered_set<T>;


enum EventType
{
  e_NoneTypeEvent = -1,
  e_GameStartEvent = 0,
  e_TestEvent = 1,
  e_LuaEvent = 2,
  e_FunnyObjectCreate = 3,
  e_EventTypeMax
};

class Event
{
public:
  explicit Event(EventType type) : m_type(type) {}
  EventType m_type;
};

class EventListener
{
public:
  virtual void OnEvent(Event *received) = 0;
  void Subscribe(EventType type)
  {
    if (this->m_subscribeList.find(type) == this->m_subscribeList.end())
    {
        this->m_subscribeList.emplace(type);
    }
  }
  void Unsubscribe(EventType type)
  {
    for (auto it = m_subscribeList.begin(); it!=m_subscribeList.end();)
    {
        if (*it == type)
        {
            it = m_subscribeList.erase(it);
        }
        else {
            it++;
        }
    }
  }
  void UnsubscribeAll()
  {
    this->m_subscribeList.clear();
  }

  virtual ~EventListener() { UnsubscribeAll();}


private:
  UniqueContainer<EventType> m_subscribeList;
};


// assume singleton<T> exists

template<typename T>
using UniqueContainer = std::unordered_set<T>;


class EventManager : public Singleton<EventManager>
{
public:
  void Init();
  void Update();
  void Exit();

  void RemoveListener(EventListener *listener);
  void SendEvent(Event *sent)
  {
    for (auto listener : m_listeners[sent->m_type])
    {
        listener->OnEvent(sent);
    }
  }

  // future functionality:// void QueueEvent(Event *sent, float delay = 0.0f);  
  friend class EventListener;
  void Subscribe(EventType type, EventListener *listener)
  {
    m_listeners[type].emplace_back(listener);
  }
  void Unsubscribe(EventType type, EventListener *listener);

  std::map<EventType, std::vector<EventListener*>> m_listeners;
};

#endif