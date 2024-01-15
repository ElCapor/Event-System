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