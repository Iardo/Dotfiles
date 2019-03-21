@echo off
:: comprueba los permisos de administrador
net session >nul 2>&1
if %errorlevel% equ 0 (
    echo --^> privilegios de administrador encontrados.
) else (
    echo --^> debes ejecutar este archivo como administrator.
    pause
)


:: paths
setlocal 
set startup=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start^ Menu\Programs\STARTUP
set scripts=D:\_Document\_Personal\_Scripts
set systems=D:\Applications\Desktop.Microsoft\_OS
set nodescript=D:\Proyecto\Computer\Cloud\_Github\Nodescripts\source
set powershell=D:\Proyecto\Computer\Cloud\_Github\Powerscripts\source

:: añade un symlink a la carpeta de "_scripts"
:: esto facilita la sincronización entre distintas máquinas
cd /d %userprofile%
if not exist .scripts mklink /j .scripts %scripts%

cd /d %scripts%
if not exist .\node mklink /j .\node %nodescript%
if not exist .\powershell mklink /j .\powershell %powershell%


:: no hay forma directa de crear accesos directos desde la consola
:: pero podemos crealos usando scripts de visualbasic por medio de (WSH)
set SCRIPT="%TEMP%\temporal.vbs"

echo autostart = "%STARTUP%\autostart.lnk" >> %script%
echo set whost = wscript.createobject("wscript.shell") >> %script%
echo set opath = whost.createshortcut(autostart) >> %script%
echo opath.targetpath = "%SCRIPTS%\shortcuts\autostart.ahk" >> %script%
echo opath.workingdirectory = "%SCRIPTS%" >> %script%
echo opath.save >> %script%

cscript /nologo %script%
del %script%


:: agregamos nuestros "alias.cmd" al registro
cd /d %systems% 
reg import aprovisionar.reg

pause
