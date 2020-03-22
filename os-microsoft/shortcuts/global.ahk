#singleinstance force  ; replaces the old instance

; CONFIG:
ICON = D:\Multimedia-C\_Icon\_Programs\Media-Round\Brackets.ico
menu, tray, icon, %ICON%


; SHORTCUTS:
; /
; WHATSAPP
numpaddiv::
PATH = C:\Users\Iardo\AppData\Local\WhatsApp
if winexist("ahk_exe WhatsApp.exe"){
    if winactive("ahk_exe WhatsApp.exe"){
        winminimize ahk_exe WhatsApp.exe
    } else {
        winactivate ahk_exe WhatsApp.exe
    }
} else {
    run "%PATH%\WhatsApp.exe"
}
return

; / + CTRL
; STATION
^numpaddiv::
PATH = C:\Users\Iardo\AppData\Local\browserX
if winexist("ahk_exe Station.exe"){
    if winactive("ahk_exe Station.exe"){
        winminimize ahk_exe Station.exe
    } else {
        winactivate ahk_exe Station.exe
    }
} else {
    run "%PATH%\Station.exe"
}
return

; *
; CONEMU
numpadmult::
send, ^!t
return

; * + CTRL
; administrador de tareas
^numpadmult::
if winexist("ahk_exe Taskmgr.exe"){
    if winactive("ahk_exe Taskmgr.exe"){
        winminimize ahk_exe Taskmgr.exe
    } else {
        winactivate ahk_exe Taskmgr.exe
    }
} else {
    run taskmgr.exe
}
return

; 7
; ZBRUSH
numpad7::
PATH = D:\Applications\Desktop.Microsoft\App-Installer\Graphic\Graphic-Model\_Model\Graphic-Sculpt\[PR] ZBrush\ZBrush 4R7
if winexist("ahk_exe ZBrush64.exe"){
    if winactive("ahk_exe ZBrush64.exe"){
        winminimize ahk_exe ZBrush64.exe
    } else {
        winactivate ahk_exe ZBrush64.exe
    }
} else {
    run "%PATH%\ZBrush64.exe"
}
return

; 7 + CTRL
; BLENDER
^numpad7::
PATH = C:\Program Files\Blender 2.80.0
if winexist("ahk_exe blender.exe"){
    if winactive("ahk_exe blender.exe"){
        winminimize ahk_exe blender.exe
    } else {
        winactivate ahk_exe blender.exe
    }
} else {
    run "%PATH%\blender.exe"
}
return

; 8
; GODOT
numpad8::
PATH = D:\Applications\Desktop.Microsoft\App-Installer\Graphic\_Engine\[FO] Godot Engine\Godot 3.0.6
if winexist("ahk_exe Godot 3.0.6.exe"){
    if winactive("ahk_exe Godot 3.0.6.exe"){
        winminimize ahk_class Engine ahk_exe Godot 3.0.6.exe
    } else {
        winactivate ahk_class Engine ahk_exe Godot 3.0.6.exe
    }
} else {
    run "%PATH%\Godot 3.0.6.exe"
}
return

; 8 + CTRL
; HOUDINI
^numpad8::
PATH = C:\Program Files\Side Effects Software\Houdini 17.5.173\bin
if winexist("ahk_exe houdini.exe"){
    if winactive("ahk_exe houdini.exe"){
        winminimize ahk_class Engine ahk_exe houdini.exe
    } else {
        winactivate ahk_class Engine ahk_exe houdini.exe
    }
} else {
    run "%PATH%\houdini.exe"
}
return

; 9
; VSCODE
numpad9::
PATH = C:\Program Files\VSCode
if winexist("ahk_exe Code.exe"){
    if winactive("ahk_exe Code.exe"){
        winminimize ahk_exe Code.exe
    } else {
        winactivate ahk_exe Code.exe
    }
} else {
    run "%PATH%\Code.exe"
}
return

; 9 + CTRL
; SUBLIME TEXT
^numpad9::
PATH = D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\SublimeText
if winexist("ahk_exe sublime_text.exe"){
    if winactive("ahk_exe sublime_text.exe"){
        winminimize ahk_exe sublime_text.exe
    } else {
        winactivate ahk_exe sublime_text.exe
    }
} else {
    run "%PATH%\sublime_text.exe"
}
return

; 4
; ADOBE PHOTOSHOP
numpad4::
PATH = C:\Program Files\Adobe\Adobe Photoshop CC 2019
if winexist("ahk_exe Photoshop.exe"){
    if winactive("ahk_exe Photoshop.exe"){
        winminimize ahk_exe Photoshop.exe
    } else {
        winactivate ahk_exe Photoshop.exe
    }
} else {
    run "%PATH%\Photoshop.exe"
}
return

; 4 + CTRL
; CLIP STUDIO PAINT
^numpad4::
PATH = C:\Program Files\CELSYS\CLIP STUDIO 1.5\CLIP STUDIO PAINT
if  winexist("ahk_exe CLIPStudioPaint.exe"){
    if winactive("ahk_exe CLIPStudioPaint.exe"){
        winminimize ahk_exe CLIPStudioPaint.exe
    } else {
        winactivate ahk_exe CLIPStudioPaint.exe
    }
} else {
    run "%PATH%\CLIPStudioPaint.exe"
}
return

; 5
; ADOBE ILLUSTRATOR
numpad5::
PATH = C:\Program Files\Adobe\Adobe Illustrator CC 2019\Support Files\Contents\Windows
if winexist("ahk_exe Illustrator.exe"){
    if winactive("ahk_exe Illustrator.exe"){
        winminimize ahk_exe Illustrator.exe
    } else {
        winactivate ahk_exe Illustrator.exe
    }
} else {
    run "%PATH%\Illustrator.exe"
}
return

; 5 + CTRL
; ADOBE INDESIGN
^numpad5::
PATH = C:\Program Files\Adobe\Adobe InDesign CC 2019
if winexist("ahk_exe InDesign.exe"){
    if winactive("ahk_exe InDesign.exe"){
        winminimize ahk_exe InDesign.exe
    } else {
        winactivate ahk_exe InDesign.exe
    }
} else {
    run "%PATH%\InDesign.exe"
}
return

; 6
; 
numpad6::
return

; 6 + CTRL
; 
^numpad6::
return

; 1
; ADOBE AFTEREFFECTS
numpad1::
PATH = C:\Program Files\Adobe\Adobe After Effects CC 2019\Support Files
if winexist("ahk_exe AfterFX.exe"){
    if winactive("ahk_exe AfterFX.exe"){
        winminimize ahk_exe AfterFX.exe
    } else {
        winactivate ahk_exe AfterFX.exe
    }
} else {
    run "%PATH%\AfterFX.exe"
}
return

; 1 + CTRL
; ADOBE PREMIERE
^numpad1::
PATH = C:\Program Files\Adobe\Adobe Premiere Pro CC 2019
if winexist("ahk_exe Adobe Premiere Pro.exe"){
    if winactive("ahk_exe Adobe Premiere Pro.exe"){
        winminimize ahk_exe Adobe Premiere Pro.exe
    } else {
        winactivate ahk_exe Adobe Premiere Pro.exe
    }
} else {
    run "%PATH%\Adobe Premiere Pro.exe"
}
return

; 2
; ADOBE AUDITION
numpad2::
PATH = C:\Program Files\Adobe\Adobe Audition CC 2019
if winexist("ahk_exe Adobe Audition CC.exe"){
    if winactive("ahk_exe Adobe Audition CC.exe"){
        winminimize ahk_exe Adobe Audition CC.exe
    } else {
        winactivate ahk_exe Adobe Audition CC.exe
    }
} else {
    run "%PATH%\Adobe Audition CC.exe"
}
return

; 2 + CTRL
; FLSTUDIO
^numpad2::
PATH = C:\Program Files (x86)\Image-Line\FL Studio 20
if winexist("ahk_exe FL64.exe"){
    if winactive("ahk_exe FL64.exe"){
        winminimize ahk_exe FL64.exe
    } else {
        winactivate ahk_exe FL64.exe
    }
} else {
    run "%PATH%\FL64.exe"
}
return

; 3
; RENOISE
numpad3::
PATH = C:\Program Files\Renoise 3.1.0
if winexist("ahk_exe Renoise.exe"){
    if winactive("ahk_exe Renoise.exe"){
        winminimize ahk_exe Renoise.exe
    } else {
        winactivate ahk_exe Renoise.exe
    }
} else {
    run "%PATH%\Renoise.exe"
}
return

; 3 + CTRL
; MILKYTRACKER
^numpad3::
PATH = D:\Applications\Desktop.Microsoft\App-Installer\Production\Production-Audio\Production-Editor\[FR] Milkytracker
if winexist("ahk_exe MilkyTracker.exe"){
    if winactive("ahk_exe MilkyTracker.exe"){
        winminimize ahk_exe MilkyTracker.exe
    } else {
        winactivate ahk_exe MilkyTracker.exe
    }
} else {
    run "%PATH%\MilkyTracker.exe"
}
return

; 0
; cambio de escritorio ←
numpad0::
;send, ^+!{tab} 
send, ^+{tab}
return

; .
; cambio de escritorio →
numpaddot::
;send, ^!{tab}  
send, ^{tab}
return

