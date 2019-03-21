@echo off

:: paths
setlocal
set script=%USERPROFILE%\.scripts
set editor="d:\applications\desktop.microsoft\app-installer\computer\_development\computer-develop\[pr] sublimetext\sublime_text.exe"


:: commands
doskey alias=%editor% %script%\_alias.cmd
doskey posh=powershell


