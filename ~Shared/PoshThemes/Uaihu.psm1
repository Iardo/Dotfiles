#requires -version 2 -modules posh-git

# GLOBAL:
$theme = $global:themesettings
$theme.promptsymbols.start = ""
$theme.promptsymbols.space = [char]::convertfromutf32(0x0020) # espacio en blanco: 0x276f
$theme.promptsymbols.indicator = [char]::convertfromutf32(0x276F)
$theme.promptsymbols.forward = [char]::convertfromutf32(0xE0B0)
$theme.promptsymbols.backward = [char]::convertfromutf32(0xE0B2)

$theme.colors.highlight = [consolecolor]::darkblue
$theme.colors.gliph = [consolecolor]::white
$theme.colors.foreground = [consolecolor]::white
$theme.colors.background = [consolecolor]::darkgray
$theme.colors.foregroundwith = [consolecolor]::darkred
$theme.colors.backgroundwith = [consolecolor]::magenta
$theme.colors.foregroundgit = [consolecolor]::white
$theme.colors.backgroundvirtual = [system.consolecolor]::red
$theme.colors.foregroundvirtual = [system.consolecolor]::white


# THEME:
function write-theme {
    param([bool] $lastCommandFailed, [string] $with)

    # comprueba si el ultimo comando fallo
    if ($lastCommandFailed) {
        $prompt += write-prompt -object "$($theme.promptsymbols.failedCommandSymbol) " -foregroundcolor $theme.colors.commandFailedIconForegroundcolor -backgroundcolor $theme.colors.sessionInfoBackgroundColor
    }

    # comprueba los permisos de administrador
    if (test-administrator) {
        $prompt += write-prompt -object "$($theme.promptsymbols.elevatedSymbol) " -foregroundcolor $theme.colors.adminIconForegroundColor -backgroundcolor $theme.colors.sessionInfoBackgroundColor
    }

    # SECTION A:
    # escribe el nombre de usuario
    $user = [system.environment]::username
    $separator = [char]::convertfromutf32(0x1f351)
    $computer = [char]::convertfromutf32(0x30ab) + [char]::convertfromutf32(0x30df)
    $path = get-fullpath -dir $pwd

    $background = $theme.colors.sessionInfoBackgroundColor
    # escribe el nombre de usuario antes del path
    if (test-notdefaultuser($user)) {
        $prompt += write-prompt -object "$user$separator$computer " -foregroundcolor $theme.colors.sessionInfoForegroundColor -backgroundcolor $background
    }

    if (test-virtualenv) {
        $prompt += write-prompt -object "$($theme.promptsymbols.forward) " -foregroundcolor $background -backgroundcolor $theme.colors.backgroundvirtual
        $prompt += write-prompt -object "$($theme.promptsymbols.virtualenvsymbol) $(get-virtualenvname) " -foregroundcolor $theme.colors.foregroundvirtual -backgroundcolor $theme.colors.backgroundvirtual
        $prompt += write-prompt -object "$($theme.promptsymbols.forward) " -foregroundcolor $theme.colors.backgroundvirtual -backgroundcolor $theme.colors.promptBackgroundColor
    } else {
        $prompt += write-prompt -object "$($theme.promptsymbols.forward) " -foregroundcolor $background -backgroundcolor $theme.colors.promptBackgroundColor
    }


    # SECTION B:
    # color de fondo
    $background = $theme.colors.promptBackgroundColor

    # escribe el path
    $path = (get-fullpath -dir $pwd).replace('\', ' ' + [char]::convertfromutf32(0xE0B1) + ' ') + ' '
    $prompt += write-prompt -object $path -foregroundcolor $theme.colors.foreground -backgroundcolor $theme.colors.promptBackgroundColor
    
    $status = get-vcsstatus
    if ($status) {
        $themeinfo = get-vcsinfo -status ($status)
        $background = $themeinfo.backgroundcolor
        $prompt += write-prompt -object $theme.promptsymbols.forward -foregroundcolor $theme.colors.promptBackgroundColor -backgroundcolor $background
        $prompt += write-prompt -object " $($themeinfo.vcinfo) " -backgroundcolor $background -foregroundcolor $theme.colors.foregroundgit
    }

    if ($with) {
        $prompt += write-prompt -object $theme.promptsymbols.forward -foregroundcolor $background -backgroundcolor $theme.colors.backgroundwith
        $prompt += write-prompt -object " $($with.toupper()) " -backgroundcolor $theme.colors.backgroundwith -foregroundcolor $theme.colors.foregroundwith
        $background = $theme.colors.backgroundwith
    }
        $prompt += write-prompt -object $theme.promptsymbols.forward -foregroundcolor $background

    # escribe la hora
    $timecolor = [system.consolecolor]::darkgreen
    $timestamp = get-date -uformat %r #R

    $prompt += set-cursorforrightblockwrite -textlength ($timestamp.length + 4)
    $prompt += write-prompt $theme.promptsymbols.backward -foregroundcolor $timecolor
    $prompt += write-prompt $theme.promptsymbols.space -backgroundcolor $timecolor
    $prompt += write-prompt $timestamp -foregroundcolor $theme.colors.foreground -backgroundcolor $timecolor
    $prompt += write-prompt $theme.promptsymbols.space -backgroundcolor $timecolor


    # SECTION C:
    # escribe el postfix en misma linea (elegir uno)
    # $prompt += write-prompt -object $theme.promptsymbols.forward -foregroundcolor $background

    # escribe el postfix en nueva linea
    $prompt += set-newline
    $prompt += write-prompt -object $theme.promptsymbols.space -foregroundcolor $background
    $prompt += " "
    $prompt


}

