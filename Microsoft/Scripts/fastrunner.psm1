<#
    Fastrunner: Permite ejecutar facilmente scripts: ps1, psm1 o nodejs.
#>
$script = "$env:USERPROFILE\.scripts"

# COMMANDS
set-alias runs script-run
set-alias runsl script-list

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

