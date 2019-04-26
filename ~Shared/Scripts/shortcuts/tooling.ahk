#singleinstance force  ; replaces the old instance

; CONFIG:
ICON = D:\Multimedia-C\_Icon\_Programs\Media-Round\Blender 2.ico
menu, tray, icon, %ICON%

                                                             
;     _|_|_|  _|          _|_|    _|_|_|      _|_|    _|
;   _|        _|        _|    _|  _|    _|  _|    _|  _|
;   _|  _|_|  _|        _|    _|  _|_|_|    _|_|_|_|  _|
;   _|    _|  _|        _|    _|  _|    _|  _|    _|  _|
;     _|_|_|  _|_|_|_|    _|_|    _|_|_|    _|    _|  _|_|_|_|
; /
; document save
numpaddiv::
send, ^s
return

; / + CTRL
; document new 
^numpaddiv::
send, ^n
return

; 0 + CTRL
; undo
^numpad0::^z
return


;   _|_|_|    _|_|_|_|    _|_|_|  _|_|_|    _|_|_|  _|      _|
;   _|    _|  _|        _|          _|    _|        _|_|    _|
;   _|    _|  _|_|_|      _|_|      _|    _|  _|_|  _|  _|  _|
;   _|    _|  _|              _|    _|    _|    _|  _|    _|_|
;   _|_|_|    _|_|_|_|  _|_|_|    _|_|_|    _|_|_|  _|      _|

#if (winactive("ahk_exe Photoshop.exe") || winactive("ahk_exe CLIPStudioPaint.exe"))
; *
; changes acept
numpadmult::enter
return

; * + CTRL
; changes decline
^numpadmult::escape
return

#if
return


#if (winactive("ahk_exe Illustrator.exe") || winactive("ahk_exe InDesign.exe") || winactive("ahk_exe Photoshop.exe") || winactive("ahk_exe CLIPStudioPaint.exe"))
; 9
; delete
numpad9::delete
return

; 4
; tool move
numpad4::
send, v
return

; 6
; canvas move
numpad6::space
return

; 6 + CTRL
; canvas zoom
^numpad6::^space
return

; 3
; color swap
numpad3::
send, x
return

#if
return


#if (winactive("ahk_exe Illustrator.exe"))
; *
; outline stroke
numpadmult::
send, ^+l
return

; * + CTRL
; expand appearance
^numpadmult::
send, ^+c
return

; 7
; reflect
numpad7::
send, ^+r
return

; 8
; duplicate selection
numpad8::
send, ^c
send, ^v
return

; 8 + CTRL
; new layer
^numpad8::
send, ^l
return

; 4 + CTRL
; tool direct selection
^numpad4::
send, a
return

; 5
; tool lasso
numpad5::
send, q
return

; 5 + CTRL
; deselect
^numpad5::
send, ^+a
return

; 1
; tool width
numpad1::
send, j
return

; 1 + CTRL
; tool shape builder
^numpad1::
send, w
return

; 2
; tool pen
numpad2::
send, p
return

; 2 + CTRL
; tool text
^numpad2::
send, t
return

; 3 + CTRL
; tool rectangle
^numpad3::
send, m
return

; 0
; panel color
numpad0::
send, ,
return

; .
; panel gradient
numpaddot::
send, .
return

; . + CTRL
; redo
^numpaddot::^+z
return

#if
return


#if (winactive("ahk_exe InDesign.exe"))
; *
; (evita comportamientos inesperados)
numpadmult::
return

; * + CTRL
; (evita comportamientos inesperados)
^numpadmult::
return

; 7
; tool gap
numpad7::
send, u
return

; 7 + CTRL
; tool page
^numpad7::
send, +p
return

; 8
; new page
numpad8::
send, ^+p
return

; 4 + CTRL
; tool text
^numpad9::
send, t
return

; 5
; tool rectangle
numpad5::
send, m
return

; 5 + CTRL
; tool rectangle frame
^numpad5::
send, f
return

; 1
; 
numpad1::
return

; 2
; 
numpad2::
return

; 0
; panel color
numpad0::
send, {F6}
return

; .
; panel gradient
numpaddot::
send, {F4}
return

; . + CTRL
; redo
^numpaddot::^+z
return

#if
return


#if (winactive("ahk_exe Photoshop.exe"))
; 7
; transform
numpad7::
send, ^t
return

; 7 + CTRL
; tool rectangle
^numpad7::
send, u
return

; 8
; new layer
numpad8::
send, ^+!n
return

; 8 + CTRL
; new group
^numpad8::
send, ^+!g
return

; 4
; tool move
numpad4::
send, v
return

; 4 + CTRL
; tool pen
^numpad4::
send, p
return

; 5
; tool lasso
numpad5::
send, +l
return

; 5 + CTRL
; deselect
^numpad5::
send, ^d
return

; 1
; levels
numpad1::
send, ^l
return

; 1 + CTRL
; HUE/saturation
^numpad1::
send, ^u
return

; 2
; tool brush
numpad2::
send, b
return

; 2 + CTRL
; tool eraser
^numpad2::
send, e
return

; 3 + CTRL
; (evita comportamientos inesperados)
^numpad3::
return

; 0
; decrease brush size, -
numpad0::
send, [
return

; .
; increase brush size, +
numpaddot::
send, ]
return

; . + CTRL
; redo
^numpaddot::^+z
return

#if
return


#if (winactive("title Adobe XD"))
; 7
; 
; numpad7::
return

; 8
; 
; numpad8::
return

; 9
; 
; numpad9::
return

; 4
; 
; numpad4::
return

; 5
; 
; numpad5::
return

; 1
; 
; numpad1::
return

; 2
; 
; numpad2::
return

; 3
; 
; numpad3::
return

; 0
; 
numpad0::
return

; .
; 
numpaddot::
return

; . + CTRL
; redo
^numpaddot::^+z
return

#if
return


#if (winactive("ahk_exe CLIPStudioPaint.exe"))
; 7
; transform
numpad7::
send, ^t
return

; 7 + CTRL
; canvas rotate
^numpad7::
send, r
return

; 8
; new layer
numpad8::
send, ^+n
return

; 8 + CTRL
; new folder
^numpad8::
send, ^+g
return

; 9 + CTRL
; clear layer
^numpad9::backspace
return

; 4
; tool move
numpad4::
send, v
return

; 4 + CTRL
; tool pen
^numpad4::
send, p
return

; 5
; selection
numpad5::
send, m
return

; 5 + CTRL
; deselect
^numpad5::
send, ^d
return

; 1
; color transparent
numpad1::
send, c
return

; 2
; tool brush
numpad2::
send, b
return

; 2 + CTRL
; tool blend
^numpad2::
send, j
return

; 3 + CTRL
; tool bucket
^numpad3::
send, g
return

; 0
; decrease brush size, -
numpad0::
send, [
return

; .
; increase brush size, +
numpaddot::
send, ]
return

; . + CTRL
; redo
^numpaddot::^y
return

#if
return


;   _|_|_|    _|_|_|_|  _|      _|  _|_|_|_|  _|          _|_|    _|_|_|    _|      _|  _|_|_|_|  _|      _|  _|_|_|_|_|
;   _|    _|  _|        _|      _|  _|        _|        _|    _|  _|    _|  _|_|  _|_|  _|        _|_|    _|      _|    
;   _|    _|  _|_|_|    _|      _|  _|_|_|    _|        _|    _|  _|_|_|    _|  _|  _|  _|_|_|    _|  _|  _|      _|    
;   _|    _|  _|          _|  _|    _|        _|        _|    _|  _|        _|      _|  _|        _|    _|_|      _|    
;   _|_|_|    _|_|_|_|      _|      _|_|_|_|  _|_|_|_|    _|_|    _|        _|      _|  _|_|_|_|  _|      _|      _|    

#if (winactive("ahk_exe Code.exe") || winactive("ahk_exe sublime_text.exe"))
; *
; integrated terminal
numpadmult::
; los caracteres se escapan usando `
send, ^``
return

; * + CTRL
; 
^numpadmult::
send, ^+u
return

; 4
; selection word
numpad4::
send, ^d
return

; 4 + CTRL
; selection all
^numpad4::
send, ^a
return

; 5
; ascending align
numpad5::
send, ^k
send, ^a
return

; 5 + CTRL
; ascending sort
^numpad5::
send, ^k
send, ^s
return

; 6
; lowercase
numpad6::
send, ^k
send, m
return

; 6 + CTRL
; uppercase
^numpad6::
send, ^k
send, ^m
return

; 1
; jump to a newline
numpad1::
send, {end}
send, {enter}
return

; 1 + CTRL
; delele line
^numpad1::^+k
return

; 0
; cambio de pestaña ←
numpad0::
send, ^+{tab}
return

; 0 + CTRL
; undo
^numpad0::^z
return

; .
; cambio de pestaña →
numpaddot::
send, ^{tab}
return

; . + CTRL
; redo
^numpaddot::^y
return


#if (winactive("ahk_exe Code.exe"))
; 7
; file explorer
numpad7::
send, ^+e
return

; 7 + CTRL
; source control
^numpad7::
send, ^+g
send, g
return

; 8
; add a breakpoint
numpad8::F9
return

; 8 + CTRL
; debug Godot
^numpad8::
if winexist("ahk_exe Godot 3.0.6.exe"){
    winactivate ahk_class Engine ahk_exe Godot 3.0.6.exe
    send, {F5}
} else {
    msgbox ninguna instacia de Godot abierta
}
return

; 9
; debug start
numpad9::
send, ^+d
send, ^+y
send, {F5}
return

; 9 + CTRL
; debug stop
^numpad9::
send, +{F5}
send, ^+y
send, ^+j
send, ^+e
send, ^{tab}
return

; 2
; snippet: console.log()
numpad2::
setkeydelay, 1
send, clog{tab}
return

; 2 + CTRL
; snippet: import ""
^numpad2::
setkeydelay, 1
send, impt{tab}
return

; 3
; snippet: new function(){}
numpad3::
setkeydelay, 1
send, func{tab}
return

; 3 + CTRL
; snippet: new class(){}
^numpad3::
setkeydelay, 1
send, clsa{tab}
return

#if
return


#if (winactive("ahk_exe sublime_text.exe"))
; 7
; 
; numpad7::
return

; 8
; 
; numpad8::
return

; 9
; 
; numpad9::
return

; 2
; 
; numpad2::
return

; 3
; 
; numpad3::
return

#if
return


;   _|      _|    _|_|    _|_|_|    _|_|_|_|  _|        
;   _|_|  _|_|  _|    _|  _|    _|  _|        _|        
;   _|  _|  _|  _|    _|  _|    _|  _|_|_|    _|        
;   _|      _|  _|    _|  _|    _|  _|        _|        
;   _|      _|    _|_|    _|_|_|    _|_|_|_|  _|_|_|_|  

#if (winactive("ahk_exe blender.exe") || winactive("ahk_exe Godot 3.0.6.exe") || winactive("ahk_exe houdini.exe") || winactive("ahk_exe ZBrush64.exe"))
; 0 + CTRL
; undo
^numpad0::^z
return

; . + CTRL
; redo
^numpaddot::^+z
return

#if
return


#if (winactive("ahk_exe blender.exe"))
; *
; change mode
numpadmult::
send, ^{tab}
return

; * + CTRL
; create object
^numpadmult::
send, +a
return

; 7
; create edge loop
numpad7::
send, ^r
return

; 7 + CTRL
; change edge loop position
^numpad7::
send, gg
return

; 8
; delete panel
numpad8::
send, x
return

; 8 + CTRL
; origin to geometry
^numpad8::
send, ^!+c
return

; 9
; fill hole
numpad9::
send, f
return

; 9 + CTRL
; recalculate normals
^numpad9::
send, +n
return

; 4
; mode vertex
numpad4::
send, 1
return

; 4 + CTRL
; tool move
^numpad4::
send, !g
return

; 5
; mode edge
numpad5::
send, 2
return

; 5 + CTRL
; tool rotate
^numpad5::
send, ^!r
return

; 6
; mode face
numpad6::
send, 3
return

; 6 + CTRL
; tool scale
^numpad6::
send, ^!s
return

; 1
; sculpt → draw
numpad1::
send, x
return

; 1 + CTRL
; sculpt → mask
^numpad1::
send, m
return

; 2
; sculpt → crease
numpad2::
send, +c
return

; 2 + CTRL
; sculpt → pinch
^numpad2::
send, p
return

; 3
; ALT
numpad3::alt
return

; 3 + CTRL
; sculpt → grab
^numpad3::
send, g
return

; 0
; cambio de workspace ←
numpad0::^pgup
return

; .
; cambio de workspace →
numpaddot::^pgdn
return

#if
return


#if (winactive("ahk_exe Godot 3.0.6.exe"))
; *
; changes acept
numpadmult::
send, {enter}
return

; * + CTRL
; changes decline
^numpadmult::
send, {escape}
return

; 7
; script open
numpad7::
send, ^!o
return

; 7 + CTRL
; scene open
^numpad7::
send, ^+o
return

; 8
; add node
numpad8::
send, ^a
return

; 8 + CTRL
; debug
^numpad8::
counter := 0
WinGet, winlist, List, ahk_exe Godot 3.0.6.exe
loop, %winlist%
{
    counter++
}
if (counter >= 3){
    send, {F8}
} else {
    send, {F5}
}
return

; 9
; delete
numpad9::delete
return

; 9 + CTRL
; script remove
^numpad9::
send, ^+e
return

; 4
; tool move
numpad4::
send, w
return

; 4 + CTRL
; tool selection
^numpad4::
send, q
return

; 5
; tool rotate
numpad5::
send, e
return

; 5 + CTRL
; viewport 2D
^numpad5::
send, {F1}
return

; 6
; tool scale
numpad6::
send, r
return

; 6 + CTRL
; viewport 3D
^numpad6::
send, {F2}
return

; 1
; 
; numpad1::
return

; 2
; 
; numpad2::
return

; 3
; ALT
numpad3::alt
return

; 0
; 
numpad0::
return

; .
; 
numpaddot::
return

#if
return


#if (winactive("ahk_exe houdini.exe"))
; *
; menu tab
numpadmult::
send, {tab}
return

; * + CTRL
; menu v
^numpadmult::
send, v
return

; 7
; 
; numpad7::
return

; 8
; 
; numpad8::
return

; 9
; 
; numpad9::
return

; 4
; mode vertex
numpad4::
send, 2
return

; 4 + CTRL
; tool move
^numpad4::
send, t
return

; 5
; mode edge
numpad5::
send, 3
return

; 5 + CTRL
; tool rotate
^numpad5::
send, r
return

; 6
; mode face
numpad6::
send, 4
return

; 6 + CTRL
; tool scale
^numpad6::
send, e
return

; 1
; 
; numpad1::
return

; 2
; 
; numpad2::
return

; 3
; 
; numpad3::
return

; 0
; 
numpad0::
return

; .
; 
numpaddot::
return

#if
return


#if (winactive("ahk_exe ZBrush64.exe"))
; *
; mode edit
numpadmult::
send, t
return

; 7
; symmetry
numpad7::
send, x
return

; 8
; subdivide
numpad8::
send, ^d
return

; 9
; polyframe
numpad9::
send, +f
return

; 9 + CTRL
; frame
^numpad9::
send, f
return

; 4
; tool move
numpad4::
send, w
return

; 4 + CTRL
; tool draw
^numpad4::
send, q
return

; 5
; tool rotate
numpad5::
send, e
return

; 6
; tool scale
numpad6::
send, r
return

; 1
; 
; numpad1::
return

; 2
; 
; numpad2::
return

; 3
; ALT
numpad3::alt
return

; 0
; decrease brush size, -
numpad0::
send, [
return

; .
; increase brush size, +
numpaddot::
send, ]
return

#if
return


;   _|_|_|    _|_|_|      _|_|    _|_|_|    _|    _|    _|_|_|  _|_|_|_|_|  _|_|_|    _|_|    _|      _|
;   _|    _|  _|    _|  _|    _|  _|    _|  _|    _|  _|            _|        _|    _|    _|  _|_|    _|
;   _|_|_|    _|_|_|    _|    _|  _|    _|  _|    _|  _|            _|        _|    _|    _|  _|  _|  _|
;   _|        _|    _|  _|    _|  _|    _|  _|    _|  _|            _|        _|    _|    _|  _|    _|_|
;   _|        _|    _|    _|_|    _|_|_|      _|_|      _|_|_|      _|      _|_|_|    _|_|    _|      _|

#if (winactive("ahk_exe AfterFX.exe") || winactive("ahk_exe Adobe Audition CC.exe") || winactive("ahk_exe Adobe Premiere Pro.exe") || winactive("ahk_exe FL64.exe") || winactive("ahk_exe MilkyTracker.exe") || winactive("ahk_exe Renoise.exe"))
; 0 + CTRL
; undo
^numpad0::^z
return

; . + CTRL
; redo
^numpaddot::^+z
return

#if
return


#if (winactive("ahk_exe AfterFX.exe"))
; *
; 
; numpadmult::
return

; 7
; fit 100%
numpad7::
send, !/
return

; 8
; add solid
numpad8::
send, ^y
return

; 8 + CTRL
; add text
^numpad8::
send, ^+!t
return

; 9
; delete
numpad9::delete
return

; 4
; tool move
numpad4::
send, v
return

; 5
; 
; numpad5::
return

; 6
; play/canvas move
numpad6::space
return

; 6 + CTRL
; add keyframe
^numpad6::
send, ^!k
return

; 1
; work area start
numpad1::
send, b
return

; 2
; 
; numpad2::
return

; 3
; work area end
numpad3::
send, n
return

; 0
; zoom out
numpad0::
send, -
return

; .
; zoom in
numpaddot::
send, =
return

return

#if
return


#if (winactive("ahk_exe Adobe Audition CC.exe"))
; *
; 
; numpadmult::
return

; 7
; normalize to -0.1 db
numpad7::
send, n
return

; 8
; deNoise
numpad8::
send, ^!n
return

; 8 + CTRL
; deReverb
^numpad8::
send, ^!r
return

; 9
; delete
numpad9::delete
return

; 4
; tool move
numpad4::
send, v
return

; 4 + CTRL
; tool razor
^numpad4::
send, r
return

; 5
; record
numpad5::
send, +{space}
return

; 6
; play
numpad6::space
return

; 6 + CTRL
; pause
^numpad6::
send, ^+{space}
return

; 1
; panel waveform
numpad1::
send, 9
return

; 2
; 
; numpad2::
return

; 3
; panel multitrack
numpad3::
send, 0
return

; 0
; zoom out
numpad0::
send, -
return

; .
; zoom in
numpaddot::
send, =
return

#if
return


#if (winactive("ahk_exe Adobe Premiere Pro.exe"))
; *
; 
; numpadmult::
return

; 7
; add solid
numpad7::
send, ^!r
return

; 7
; add text
^numpad7::
send, ^t
return

; 8
; 
; numpad8::
return

; 9
; delete
numpad9::delete
return

; 4
; tool move
numpad4::
send, v
return

; 4 + CTRL
; tool razor
^numpad4::
send, c
return

; 5
; tool hand
numpad5::
send, h
return

; 6
; play
numpad6::space
return

; 1
; mark in
numpad1::
send, i
return

; 1 + CTRL
; goto in
^numpad1::
send, ^+!i
return

; 2
; insert
numpad2::
send, ,
return

; 3
; mark end
numpad3::
send, o
return

; 3 + CTRL
; goto end
^numpad3::
send, ^+!o
return

; 0
; zoom out
numpad0::
send, -
return

; .
; zoom in
numpaddot::
send, =
return

#if
return


#if (winactive("ahk_exe FL64.exe"))
; *
; plugin pickers
numpadmult::
send, {F8}
return

; 7
; view playlist
numpad7::
send, {F5}
return

; 7 + CTRL
; view mixer
^numpad7::
send, {F9}
return

; 8
; view channel rack
numpad8::
send, {F6}
return

; 8 + CTRL
; view piano roll
^numpad8::
send, {F7}
return

; 9
; delete
numpad9::delete
return

; 4
; tool selection
numpad4::
send, e
return

; 4 + CTRL
; tool slice
^numpad4::
send, c
return

; 5
; tool draw
numpad5::
send, p
return

; 5 + CTRL
; tool paint
^numpad5::
send, b
return

; 6
; play
numpad6::space
return

; 1
; keyboard to piano
numpad1::
send, ^t
return

; 2
; 
; numpad2::
return

; 3
; metronome
; numpad3::
send, ^m
return

; 0
; 
numpad0::
return

; .
; 
numpaddot::
return

#if
return


#if (winactive("ahk_exe MilkyTracker.exe"))
; *
; 
; numpadmult::
return

; 7
; 
; numpad7::
return

; 8
; 
; numpad8::
return

; 9
; 
; numpad9::
return

; 4
; 
; numpad4::
return

; 5
; 
; numpad5::
return

; 6
; 
; numpad6::
return

; 1
; 
; numpad1::
return

; 2
; 
; numpad2::
return

; 3
; 
; numpad3::
return

; 0
; 
; numpad0::
return

; .
; 
numpaddot::
return

#if
return


#if (winactive("ahk_exe Renoise.exe"))
; *
; 
; numpadmult::
return

; 7
; 
; numpad7::
return

; 8
; 
; numpad8::
return

; 9
; 
; numpad9::
return

; 4
; 
; numpad4::
return

; 5
; 
; numpad5::
return

; 6
; 
; numpad6::
return

; 1
; 
; numpad1::
return

; 2
; 
; numpad2::
return

; 3
; 
; numpad3::
return

; 0
; 
; numpad0::
return

; .
; 
numpaddot::
return

#if
return

