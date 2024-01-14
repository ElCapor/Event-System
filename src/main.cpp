#include <raylib.h>
#include "events.hpp"
#include <iostream>
#include <string>
#include <assert.h>
#include "LuaVM/LuaVM.hpp"
#include "LuaVM/EventConnector.hpp"
#include "Game/Game.hpp"
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
    void OnEnter() override
    {

    }

    void OnUpdate() override
    {

    }

    void OnDraw() override
    {

    }

    void OnExit() override
    {

    }
};

class LuaGame : public Game
{
public:

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