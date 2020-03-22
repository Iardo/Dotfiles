; este script esta hecho para iniciar junto al sistema
#singleinstance force  ; replaces the old instance

; CONFIG
ICON = D:\Multimedia-C\_Icon\_Programs\Media-Round\Launchpad.ico
menu, tray, icon, %ICON%
run %A_WORKINGDIR%\global.ahk


#if (getkeystate("F23", "P"))
; encapsulamiento de taran
    ; ESC
    ; MODO GLOBAL:
    escape::
    reset()
    run %A_WORKINGDIR%\global.ahk
    toast("Global")
    return

    ; TAB
    ; MODO TOOLING:
    tab::
    reset()
    run %A_WORKINGDIR%\tooling.ahk
    toast("Tooling")
    return

    ; BACKSPACE
    ; MODO COMMANDS:
    backspace::
    reset()
    run %A_WORKINGDIR%\commands.ahk
    toast("Commands")
    return
; encapsulamiento de taran
#if
return

; GLOBAL:
; -
; PANIC BUTTON
numpadsub::
send, #d
sleep, 2000
return

; +
; muestra las aplicaciones
numpadadd::
send, #{tab}
sleep 500
return

; + & CTRL
; Fullscreen
^numpadadd::
send, {f11}
return

; ENTER
; CTRL
numpadenter::ctrl
return


; KEYBOARD:
; CTLR + ALT + T
; CONEMU
^!t::
if winexist("ahk_exe ConEmu64.exe"){
    if winactive("ahk_exe ConEmu64.exe"){
        winminimize ahk_exe ConEmu64.exe
    } else {
        winactivate ahk_exe ConEmu64.exe
    }
} else {
    run "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Terminal\[FR] ConEmu\ConEmu64.exe"
}
return

; CTLR + ALT + X
; XNVIEW
^!x:: 
if winexist("ahk_exe xnviewmp.exe"){
    if winactive("ahk_exe xnviewmp.exe"){
        winminimize ahk_exe xnviewmp.exe
    } else {
        winactivate ahk_exe xnviewmp.exe
    }
} else {
    run "C:\Program Files\XnViewMP\xnviewmp.exe", max
}
return

; CTLR + ALT + M
; WINYL
^!m::
if winexist("ahk_exe Winyl.exe"){
    if winactive("ahk_exe Winyl.exe"){
        winminimize ahk_exe Winyl.exe
    } else {
        winactivate ahk_exe Winyl.exe
    }
} else {
    run "D:\Applications\Desktop.Microsoft\App-Installer\Production\_Multimedia\Production-Audio\[FR] Winyl\Winyl.exe"
}
return


; FUNCTIONS:
; notificaciones toast
toast(byref name){
    traytip Cambio de modo:, %name%
    ;sleep 1800  ; 1.8 seconds
}
; cierra todas las capas
reset(){
    layers := ["global", "tooling", "commands"]
    detecthiddenwindows, on
    for index, element in layers {
        winclose %A_WORKINGDIR%\%element%.ahk ahk_class AutoHotkey
        ; msgbox %A_WORKINGDIR%\%element%.ahk
    }
}

