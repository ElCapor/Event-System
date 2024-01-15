#ifndef SCENE_HPP
#define SCENE_HPP
#include <string>
/*

Scene System rewrite attempt n°3

*/
#define DECLARE_SCENE(name) std::string GetName() override { \
return name; \
} \

class Scene {
public:
    virtual std::string GetName() = 0;
	virtual void OnEnter() = 0; // On scene enter
	virtual void OnUpdate() = 0; // On scene update
	virtual void OnDraw() = 0; // on scene draw
	virtual void OnExit() = 0; // on scene exit
};

#endif