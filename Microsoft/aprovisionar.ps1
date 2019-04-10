#Requires -RunAsAdministrator
set-executionpolicy remotesigned


# CONFIGURATION:
$scrp = "$env:USERPROFILE\.scripts"
$prof = "$env:USERPROFILE\Documents\WindowsPowerShell"
$dotf = "D:\Applications\_Dotfiles\~Shared"
$edit = "D:\Applications\Desktop.Microsoft\App-Installer\Computer\_Development\Computer-Develop\[PR] SublimeText\SublimeText\sublime_text.exe"


& $dotf\aprovisionar.ps1
# ejecución
CMD /c IF NOT EXIST $prof\PoshThemes MKLINK /j $prof\PoshThemes $dotf\PoshThemes
CMD /c IF NOT EXIST $prof\profile.ps1 MKLINK $prof\profile.ps1 $dotf\_Powershell.ps1
CMD /c IF NOT EXIST $prof\Modules\aliases MKDIR $prof\Modules\aliases
CMD /c IF NOT EXIST $prof\Modules\aliases\aliases.ps1 MKLINK $prof\Modules\aliases\aliases.psm1 $scrp\_alias.ps1
CMD /c IF NOT EXIST $prof\Modules\imports MKDIR $prof\Modules\imports
CMD /c IF NOT EXIST $prof\Modules\imports\imports.psm1 MKLINK $prof\Modules\imports\imports.psm1 $scrp\_imports.ps1
& $edit $dotf\Powershell.ps1

# cierra la terminal
get-process ConEmu64 | foreach-object { $_.closemainwindow() | out-null } | stop-process -force
exit

