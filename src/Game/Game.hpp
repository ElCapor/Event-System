#ifndef GAME_HPP
/*

Rewrite of the Game System attempt n�2

*/
#include <raylib.h>
#include "SceneManager.hpp"
#include "RaylibAssert.h"

// Abstract game class
class Game {
public:
	int m_Width;
	int m_Height;
	const char* m_Name;
	Game(int w, int h, const char* n) : m_Width(w), m_Height(h), m_Name(n) {}

	virtual void OnLoad() // on game load
	{
		m_SceneManager = SceneManager::getInstance();
		Assert(m_SceneManager != nullptr, "SceneManager was null");

		InitWindow(m_Width, m_Height, m_Name);
		SetTargetFPS(60);

		Assert(IsWindowReady(), "Failed to create window !");
	}

	virtual void OnExit() // on exit
	{
		// no asserts because the game wouldnt load at first if there was no scenes
		m_SceneManager->m_CurrentScene->OnExit();
		CloseWindow();
	}

	virtual void OnUpdate() // on update 
	{
		// add the scene system here
		m_SceneManager->m_CurrentScene->OnUpdate();
	}

	virtual void OnDraw() // on draw
	{
		// add scene draw here
		m_SceneManager->m_CurrentScene->OnDraw();
	}

	virtual void Main() // main function
	{
		OnLoad();
		while (!WindowShouldClose())
		{
			OnUpdate();
			BeginDrawing();
			ClearBackground(RAYWHITE);
			OnDraw();
			EndDrawing();
		}
		OnExit();
	}

	template <class t>
	void MakeDefaultScene(std::string name)
	{
		m_SceneManager->AddScene(name, std::make_unique<t>());
		Assert(m_SceneManager->m_ScenesMap.size() == 1, "Failed to add default scene");
		m_SceneManager->ChangeScene(name);
		Assert(m_SceneManager->m_CurrentScene != nullptr, "Failed to load default scene");
		// we can now safely assume that the scene exists
		m_SceneManager->m_CurrentScene->OnEnter();
	}

	SceneManager* m_SceneManager;
};
#endif // !GAME_HPP