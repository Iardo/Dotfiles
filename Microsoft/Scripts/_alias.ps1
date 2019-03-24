# PATHS
$chrome = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
$conemu = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Terminal\[FR] ConEmu"
$editor = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\sublime_text.exe"
$godot = "D:\Applications\Desktop.Microsoft\App-Installer\Graphic\_Engine\[FO] Godot Engine\Godot 3.0.6\Godot 3.0.6.exe"

# COMMANDS
set-alias chrome $chrome
set-alias godot $godot
# ABREVIATION
set-alias als alias
set-alias dot $godot


# FUNCTION
function alias {
    # pase de parametros
    if($args[0]){
        $argument = $args[0].tolower()

        if($argument -eq "-l"){
            # imprime una lista de aliases
            $aliases = get-content "$rootdir\_alias.json" -raw | convertfrom-json | select-object -expand members 
            $aliases | select-object @{name="Nombre";e={$_.data | select -expand name}},@{name="Descripcion";e={$_.data | select -expand description}},@{name="Abreviacion";e={$_.data | select -expand abreviation}},@{name="Argumentos";e={$_.data | select -expand flags}}
            write-host ""
        }
    } else {
        & $editor $rootdir\_alias.ps1
    }
}

function comd {
    cmd \d
}

function profile {
    & $editor $conemu\Powershell.ps1
}

# carga nuevamente el profile
function reload {
    # los cambios hechos dentro de las funciones persisten en la sesión
    #                         ⮦
    import-module aliases -force -disablenamechecking
    . $conemu\Powershell.ps1
    write-host "~ profile re-importado`n" -foregroundcolor darkblue
}


