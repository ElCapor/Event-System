#ifndef SCENEMANAGER_HPP
#define SCENEMANAGER_HPP
/*

Scene Manager rewrite attempt n°3

*/
#include "../Singleton.hpp"
#include "Scene.hpp"
#include "SysLog.hpp"

#include <string>
#include <map>
#include <memory>

class SceneManager : public Singleton<SceneManager> {
public:
	void AddScene(const std::string& name, std::unique_ptr<Scene> scene)
	{
		if (!IsSceneExist(name))
		{
			m_ScenesMap[name] = std::move(scene);
		}
		else {
			ERROR("%s , a scene under the same name already exists !", __FUNCTION__);
		}
	}

	void ChangeScene(const std::string& name)
	{
		if (IsSceneExist(name))
		{
			if (m_CurrentScene != nullptr)
			{
				m_CurrentScene->OnExit();
			}
			m_CurrentScene = m_ScenesMap[name].get();
		}
		else {
			ERROR("%s , there is no scenes with the name %s !", __FUNCTION__, name.c_str());
		}
	}

	// check if a scene by this name exists
	bool IsSceneExist(const std::string& name)
	{
		return m_ScenesMap.find(name) != m_ScenesMap.end();
	}

	Scene* m_CurrentScene;
	std::map<std::string, std::unique_ptr<Scene>> m_ScenesMap;
};
#endif // !SCENEMANAGER_HPP