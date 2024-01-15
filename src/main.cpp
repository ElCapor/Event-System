#include <raylib.h>
#include "events.hpp"
#include <iostream>
#include <string>
#include <assert.h>
#include "LuaVM/LuaVM.hpp"
#include "LuaVM/EventConnector.hpp"
#include "Game/Game.hpp"
#include "imgui/rlImGui.h"
#include "imgui/imgui.h"

#include "metapp/src/metapp/allmetatypes.h"


template <typename T>
class LuaEvent;

template <typename EventType>
class LuaEventListener
{
protected:
    friend class LuaEvent<EventType>;
    virtual void OnEvent(LuaEvent<EventType>* recieved) = 0;
};

// attempt at making yet another system ?
template <typename EventType>
class LuaEvent
{
public:
    explicit LuaEvent(EventType type) : m_type(type) {}
    EventType m_type;

    static void FireEvent(LuaEvent<EventType>* evt)
    {
        for (auto listener : m_listeners)
        {
            listener->OnEvent(evt);
        }
    }

    static void Subscribe(LuaEventListener<EventType>* subscriber)
    {
        m_listeners.emplace_back(subscriber);
    }
    public:
    static std::vector<LuaEventListener<EventType>*> m_listeners;
};


enum LuaEvents
{
    MenuStart
};

std::vector<LuaEventListener<LuaEvents>*> LuaEvent<LuaEvents>::m_listeners = {};

class MenuStartListener : public LuaEventListener<LuaEvents>
{
    void OnEvent(LuaEvent<LuaEvents>* evt) override
    {
        if (evt->m_type == LuaEvents::MenuStart)
        {
            std::cout << "Got event" << std::endl;
        }
    }
};



/*

GENERAL TODO:
Convert EventSystem to use templates

GENERAL NOTES :
never send structures through pointers when inside lua bound functions or else the memory will fuck up


*/
//todo : move this into a cpp file
LuaClosureID LuaClosure::maxID = -1;

class MenuScene : public Scene
{
public:
    MenuScene()
    {

    }

    void OnEnter() override
    {
        std::cout << "Hello" << std::endl;
        LuaEvent<LuaEvents> MenuEvt(LuaEvents::MenuStart);
        MenuStartListener listener;
        LuaEvent<LuaEvents>::Subscribe(&listener);
        LuaEvent<LuaEvents>::FireEvent(&MenuEvt);
        rlImGuiSetup(true);
    }

    void OnUpdate() override
    {

    }

    void OnDraw() override
    {
        rlImGuiBegin();

        ImGui::Begin("Test");

        ImGui::End();

        rlImGuiEnd();
    }

    void OnExit() override
    {
        rlImGuiShutdown();
        std::cout << "Ou" << std::endl;
    }

    std::string GetName() override
    {
        return "MenuScene";
    }
};

class LuaGame : public Game
{
public:

    LuaVM* luaVM;

    LuaGame() : Game(800, 600, "Lua")
    {
        luaVM = LuaVM::getInstance();
    }

    void OnLoad() override
    {
        Game::OnLoad();
        MakeDefaultScene<MenuScene>("MenuScene");
    }

    void OnDraw() override
    {
        Game::OnDraw();
    }
    
    void OnExit() override
    {
        Game::OnExit();
    }

    void OnUpdate() override
    {
        Game::OnUpdate();
    }

    void Main() override
    {
        Game::Main();
    }    
};

LuaGame game;
int main()
{
    game.Main();
    return 0;
}