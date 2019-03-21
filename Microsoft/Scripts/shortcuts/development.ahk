#singleinstance force  ; replaces the old instance

; CONFIG:
ICON = %A_WORKINGDIR%\shortcuts\shortcuts.ico
menu, tray, icon, %ICON%


; encapsulamiento de taran
#if (getkeystate("F23", "P"))

; SHORTCUTS:
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

#p::Pause
