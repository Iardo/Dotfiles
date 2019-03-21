@ECHO off

:: PATHS
SETLOCAL
SET SCRIPT=%USERPROFILE%\.scripts
SET EDITOR="D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\sublime_text.exe"


:: COMMANDS
DOSKEY alias=%EDITOR% %SCRIPT%\_alias.cmd


