# PATHS
$script = "$env:USERPROFILE\.scripts"
$profil = "$env:USERPROFILE\Documents\WindowsPowerShell"
$editor = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\sublime_text.exe"
$chrome = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"


# COMMANDS
set-alias reload profileReload
set-alias profile profileOpen
set-alias alias aliasOpen
set-alias alias-list aliasList
set-alias chrome $chrome


# FUNCTION
# carga nuevamente el profile
function profileReload {
    # los cambios hechos dentro de las funciones persisten en la sesión
    #                         ⮦
    import-module aliases -force
    . $profil\profile.ps1
    write-host "~ profile re-importado`n" -foregroundcolor darkblue
}

function profileOpen {
    invoke-item $profil
}

function aliasOpen {
    start-process $editor $script\_alias.ps1
}

# imprime una lista de aliases
function aliasList {
    $aliases = get-content "$script\_alias.json" -raw | convertfrom-json | select-object -expand members 
    $aliases | select @{name="Nombre";e={$_.data | select -expand name}},@{name="Descripcion";e={$_.data | select -expand description}}
    write-host ""
}


