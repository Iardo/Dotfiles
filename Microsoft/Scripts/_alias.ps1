# PATHS
$script = "$env:USERPROFILE\.scripts"
$profil = "$env:USERPROFILE\Documents\WindowsPowerShell"
$conemu = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Terminal\[FR] ConEmu"
$editor = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\sublime_text.exe"
$chrome = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"


# COMMANDS
set-alias als alias-list
set-alias chrome $chrome


# FUNCTION
function alias {
    start-process $editor $script\_alias.ps1
}

# imprime una lista de aliases
function alias-list {
    $aliases = get-content "$script\_alias.json" -raw | convertfrom-json | select-object -expand members 
    $aliases | select @{name="Nombre";e={$_.data | select -expand name}},@{name="Descripcion";e={$_.data | select -expand description}},@{name="Abreviacion";e={$_.data | select -expand abreviation}},@{name="Argumentos";e={$_.data | select -expand flags}}
    write-host ""
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
    . $profil\profile.ps1
    write-host "~ profile re-importado`n" -foregroundcolor darkblue
}


