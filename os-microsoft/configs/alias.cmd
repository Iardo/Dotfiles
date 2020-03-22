@ECHO OFF
:: paths
SETLOCAL
SET script=%USERPROFILE%\.scripts
SET editor="D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\SublimeText\sublime_text.exe"

:: commands
DOSKEY alias=%editor% %script%\_alias.cmd
DOSKEY posh=powershell

