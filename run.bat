@echo off
set "script_path=%~dp0"
set "lua_folder=%script_path%dependencies\iup\lua54.exe"
@REM set "lua_folder=%script_path%lua\lua54.exe"
set "luac_path=main.lua"

"%lua_folder%" "%luac_path%"

exit
