@ECHO OFF
:: comprueba los permisos de administrador
NET SESSION >nul 2>&1
IF %errorlevel% EQU 0 (
    ECHO --^> privilegios de administrador encontrados.
) ELSE (
    ECHO --^> debes ejecutar este archivo como administrator.
    PAUSE
)


:: PATH
SETLOCAL 
SET startup=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start^ Menu\Programs\STARTUP
SET scripts=D:\Applications\_Dotfiles\~Shared\Scripts
SET systems=D:\Applications\Desktop.Microsoft\_OS
SET nodescript=D:\Proyecto\Computer\Terminal\_Github\Nodescripts\source
SET powershell=D:\Proyecto\Computer\Terminal\_Github\Powerscripts\source

:: añade un symlink a la carpeta de "_scripts"
:: esto facilita la sincronización entre distintas máquinas
CD /d %userprofile%
IF NOT EXIST .scripts MKLINK /j .scripts %scripts%

CD /d %scripts%
IF NOT EXIST .\node MKLINK /j .\node %nodescript%
IF NOT EXIST .\powershell MKLINK /j .\powershell %powershell%


:: no hay forma directa de crear accesos directos desde la consola
:: pero podemos crealos usando scripts de visualbasic por medio de (WSH)
set SCRIPT="%TEMP%\temporal.vbs"

ECHO autostart = "%STARTUP%\autostart.lnk" >> %script%
ECHO set whost = wscript.createobject("wscript.shell") >> %script%
ECHO set opath = whost.createshortcut(autostart) >> %script%
ECHO opath.targetpath = "%SCRIPTS%\shortcuts\autostart.ahk" >> %script%
ECHO opath.workingdirectory = "%SCRIPTS%\shortcuts" >> %script%
ECHO opath.save >> %script%

cscript /nologo %script%
DEL %script%


:: agregamos nuestros "alias.cmd" al registro
CD /d %systems% 
REG import aprovisionar.reg
PAUSE

