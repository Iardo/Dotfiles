; este script esta hecho para iniciar junto al sistema
#singleinstance force  ; replaces the old instance

; CONFIG
ICON = D:\Multimedia-C\_Icon\_Programs\Media-Round\Launchpad.ico
menu, tray, icon, %ICON%


; encapsulamiento de taran
#if (getkeystate("F23", "P"))

; PRODUCTION:
; ESC
escape::
reset()
run %A_WORKINGDIR%\shortcuts\production.ahk
toast("production")
return

; MODELING:
; TAB
; tab::
reset()
run %A_WORKINGDIR%\shortcuts\model.ahk
toast("model")
return

; DESIGN:
; 🠐
; {=}::
run %A_WORKINGDIR%\shortcuts\design.ahk
toast("design")
return

; DEVELOPMENT:
; FN
; backspace::
run %A_WORKINGDIR%\shortcuts\development.ahk
toast("development")
return

; GLOBAL:
; lo que hace global es elminar cualquier otro script de capa abierto
; -
reset()
toast("global")
return


; SHORTCUTS:
; +
; numpadadd::
send {lwin down}{tab}{lwin up}
return

; ENTER
; numpadenter::
;   pseudo FN
return

; NUM
; numlock::
return

; /
; numpaddiv::
return

; *
; numpadmult::
return

; 7
; numpad7::
return

; 8
; numpad8::
return

; 9
; numpad9::
return

; 4
; numpad4::
return

; 5
; numpad5::
return

; 6
; numpad6::
return

; 1
; numpad1::
return

; 2
; numpad2::
return

; 3
; numpad3::
return

; 0
; numpad0::
return

; .
; numpaddot::
return

#if
return
; encapsulamiento de taran




; TEMPORALES:
; terminal de comandos:
~^!t:: ; ctlr + alt + t
keywait control
keywait alt

if  winexist("ahk_exe ConEmu64.exe"){
    winactivate ahk_exe ConEmu64.exe
} else {
    run "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Terminal\[FR] ConEmu\ConEmu64.exe"
}
return

; xnview
~^!x:: ; ctlr + alt + x
keywait control
keywait alt

If  winexist("ahk_exe xnviewmp.exe"){
    winactivate ahk_exe xnviewmp.exe
} else {
    run "C:\Program Files\XnViewMP\xnviewmp.exe", max
}
return




; FUNCTIONS:
; notificaciones toast
toast(byref name){
    traytip Cambio de modo:, %name%
    sleep 1800  ; 1.8 seconds
}
; cambia a la capa seleccionada cerrando las demas
reset(){
    layers := ["production", "model", "design", "development"]
    for index, element in layers {
        detecthiddenwindows, on
        winclose %A_WORKINGDIR%\shortcuts\%element%.ahk ahk_class AutoHotkey
        ; msgbox %A_WORKINGDIR%\shortcuts\%element%.ahk
    }
}

