set_encodings("utf-8")
set_languages("c++20")

add_rules("plugin.compile_commands.autoupdate", {outputdir = ".vscode"})
add_rules("mode.debug", "mode.release")
set_allowedmodes("debug", "releasedbg", "release", "coverage")
set_defaultmode("debug")
set_warnings("allextra")

add_requires("raylib")
add_requires("raygui")
add_requires("lua")
add_requires("rttr")




target("EventSystem")
    set_kind("binary")
    add_files("src/**.cpp")
    add_headerfiles("src/**.hpp")
    add_packages("raylib")
    add_packages("lua")
    add_packages("rttr")