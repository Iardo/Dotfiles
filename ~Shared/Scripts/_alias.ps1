# PATHS
$chrome = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
$dotfile = "D:\Applications\_Dotfiles"
$godot = "D:\Applications\Desktop.Microsoft\App-Installer\Graphic\_Engine\[FO] Godot Engine\Godot 3.0.6\Godot 3.0.6.exe"
$sublime = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\SublimeText\sublime_text.exe"

# COMMANDS
set-alias chrome $chrome
set-alias godot $godot
# ABREVIATION
set-alias als alias
set-alias dot $godot


# FUNCTION
function alias {
    if($args[0]){
        $argument = $args[0].tolower()

        # imprime una lista de aliases
        if($argument -eq "-l"){
            $aliases = get-content "$rootdir\_alias.json" -raw | convertfrom-json | select-object -expand members 
            $aliases | select-object @{name="Nombre";e={$_.data | select -expand name}},@{name="Descripcion";e={$_.data | select -expand description}},@{name="Abreviacion";e={$_.data | select -expand abreviation}},@{name="Argumentos";e={$_.data | select -expand flags}}
            write-host ""
        }
    } else {
        & $sublime $rootdir\_alias.ps1
    }
}

function comd {
    cmd \d
}

# comandos relacionados con powershell
function posh {
    if($args[0]){
        $argument = $args[0].tolower()

        # limpia el "history" de powershell
        if($argument -eq "-c"){
            remove-item (get-psreadlineoption).historysavepath
            write-host "~ history eliminado" -foregroundcolor darkblue
            write-host "ADVERTENCIA: la sesion va a cerrarse, presione cualquier tecla para continuar..." -foregroundcolor red
            read-host " "
            # cierra la terminal
            get-process ConEmu64 | foreach-object { $_.closemainwindow() | out-null } | stop-process -force
            exit
        }
    }
}

function profile {
    & $sublime $dotfile\~Shared\_Powershell.ps1
}

# carga nuevamente el profile
function reload {
    # los cambios hechos dentro de las funciones persisten en la sesión
    #                         ⮦
    import-module aliases -force -disablenamechecking
    . $conemu\Powershell.ps1
    write-host "~ profile re-importado`n" -foregroundcolor darkblue
}


