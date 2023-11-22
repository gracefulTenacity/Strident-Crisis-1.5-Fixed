@echo off
color 0a
cd ..
echo BUILDING GAME
haxelib install lime
haxelib install openfl
haxelib --always set flixel 4.11.0
haxelib run lime setup flixel
haxelib run lime setup
haxelib install flixel-tools
haxelib install flixel-ui
haxelib --always set flixel-addons 2.11.0
haxelib install tjson
haxelib install hxjsonast
haxelib install hxCodec
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit
haxelib install hscript
haxelib git hscript-ex https://github.com/ianharrigan/hscript-ex
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib install hxcpp-debug-server
haxelib list
lime test windows -debug
echo.
echo done.
pause