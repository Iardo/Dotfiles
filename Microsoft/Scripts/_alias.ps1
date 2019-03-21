# PATHS
$script = "$env:USERPROFILE\.scripts"
$profil = "$env:USERPROFILE\Documents\WindowsPowerShell"
$editor = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\sublime_text.exe"
$chrome = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"


# COMMANDS
# funciones
set-alias chrome $chrome
set-alias runs script-run
set-alias runsl script-list


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
}`

function profile {
    invoke-item $profil
}

# carga nuevamente el profile
function reload {
    # los cambios hechos dentro de las funciones persisten en la sesión
    #                         ⮦
    import-module aliases -force
    . $profil\profile.ps1
    write-host "~ profile re-importado`n" -foregroundcolor darkblue
}

function script-list {
    $aliases = get-content "$script\_scripts.json" -raw | convertfrom-json | select-object -expand members 
    $aliases | select @{name="Nombre";e={$_.data | select -expand name}},@{name="Descripcion";e={$_.data | select -expand description}},@{name="Plataforma";e={$_.data | select -expand plataform}}
    write-host ""
}

# permite ejecutar cualquier script
function script-run {
    $scripts = @(get-childitem $script -file -name -exclude _*)
    $scripts += @(get-childitem $script\node -name)

    # lista los escripts
    if("-l" -eq $args[0]){
        write-host "`nlistado de scripts:" -foregroundcolor darkblue
        write-host "-------------------" -foregroundcolor darkblue
        foreach ($element in $scripts) {
            [System.IO.Path]::GetFileNameWithoutExtension($element)
        }   write-host ""
    } else {
        $nofound = $false
        foreach ($element in $scripts) {
            $filename = [System.IO.Path]::GetFileNameWithoutExtension($element)
            if($filename -ne $args[0]){
                $nofound = $true
            } else {
                $nofound = $false
                if($element -match ".js"){
                    node $script\node\$element
                } else {
                    & "$script\$element"
                }
                break
            }
        }
        if($nofound -eq $true){
            write-host "script no encontrado`n" -foregroundcolor red
        }
    }
}
