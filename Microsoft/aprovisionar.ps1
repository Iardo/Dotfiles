#Requires -RunAsAdministrator
set-executionpolicy remotesigned


# actualiza "powershellget" a la ultima version
install-module powershellget -force

# instala los siguientes modulos:
install-module psutil -scope currentuser
install-module psreadline -scope currentuser -force -skippublishercheck
install-module psreadline -scope currentuser -force -skippublishercheck -allowprerelease 
install-module posh-with -scope currentuser
install-module posh-git -scope currentuser
install-module oh-my-posh -scope currentuser
Install-Module zlocation -Scope currentuser

# lista los modulos instalados
get-installedmodule
read-host "ENTER para continuar..."




# CONFIGURATION:
$script = "$env:USERPROFILE\.scripts"
$prof = "$env:USERPROFILE\Documents\WindowsPowerShell"
$edit = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\sublime_text.exe"
$cemu = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Terminal\[FR] ConEmu"

# ejecución
CMD /c IF NOT EXIST $prof\PoshThemes MKLINK /j $prof\PoshThemes $cemu\PoshThemes
CMD /c IF NOT EXIST $prof\profile.ps1 MKLINK $prof\profile.ps1 $cemu\Powershell.ps1
CMD /c IF NOT EXIST $prof\Modules\aliases MKDIR $prof\Modules\aliases
CMD /c IF NOT EXIST $prof\Modules\aliases\aliases.ps1 MKLINK $prof\Modules\aliases\aliases.psm1 $script\_alias.ps1
CMD /c IF NOT EXIST $prof\Modules\imports MKDIR $prof\Modules\imports
CMD /c IF NOT EXIST $prof\Modules\imports\imports.psm1 MKLINK $prof\Modules\imports\imports.psm1 $script\_imports.ps1
& $edit $cemu\Powershell.ps1

# cierra la terminal
Get-Process ConEmu64 | Foreach-Object { $_.CloseMainWindow() | Out-Null } | stop-process -force
exit

