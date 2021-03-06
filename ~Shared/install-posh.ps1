#Requires -RunAsAdministrator
set-executionpolicy remotesigned


# actualiza "powershellget" a la ultima version
install-module powershellget -force -allowclobber -skippublishercheck 

# instala los siguientes modulos:
install-module zlocation -scope currentuser
install-module burnttoast -scope currentuser
install-module psutil -scope currentuser
install-module psreadline -scope currentuser -force -skippublishercheck
install-module psreadline -scope currentuser -force -skippublishercheck -allowprerelease
install-module posh-with -scope currentuser
install-module posh-git -scope currentuser
install-module oh-my-posh -scope currentuser

# lista los modulos instalados
get-installedmodule
read-host "ENTER para continuar..."

