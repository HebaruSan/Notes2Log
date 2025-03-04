
@echo off

rem H is the destination game folder
rem GAMEDIR is the name of the mod folder (usually the mod name)
rem GAMEDATA is the name of the local GameData
rem VERSIONFILE is the name of the version file, usually the same as GAMEDATA,
rem    but not always

set H=%KSPDIR%

rem set H1=R:\KSP_1.12.5-CenturianMaximus
rem set H2=R:\KSP_1.12.5_Career-MissionController-JNSQ
rem set H3=R:\KSP_1.12.5_Candy-Career

set GAMEDIR=Notes2Log
set GAMEDATA="GameData"

set DP0=r:\dp0\kspdev

copy /Y "%1%2" "%GAMEDATA%\%GAMEDIR%\Plugins"
copy /Y "%1\*.pdb" "%GAMEDATA%\%GAMEDIR%\Plugins"

xcopy /y /s /I %GAMEDATA%\%GAMEDIR% "%H%\GameData\%GAMEDIR%"

rem xcopy /y /s /I %GAMEDATA%\%GAMEDIR% "%H1%\GameData\%GAMEDIR%"
rem xcopy /y /s /I %GAMEDATA%\%GAMEDIR% "%H2%\GameData\%GAMEDIR%"
rem xcopy /y /s /I %GAMEDATA%\%GAMEDIR% "%H3%\GameData\%GAMEDIR%"

rem pause
