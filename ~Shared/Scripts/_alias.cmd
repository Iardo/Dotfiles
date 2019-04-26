@echo off

:: paths
setlocal
set script=%USERPROFILE%\.scripts
set editor="D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\SublimeText\sublime_text.exe"


:: commands
doskey alias=%editor% %script%\_alias.cmd
doskey posh=powershell


