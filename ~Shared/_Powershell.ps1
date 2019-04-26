# GLOBAL
$global:rootdir = "$env:USERPROFILE\.scripts"

# IMPORT
import-module posh-git
import-module oh-my-posh
import-module imports -disablenamechecking
import-module aliases -disablenamechecking

# CONFIG
set-theme uaihu

# PATH
# usar PATH evita la apertura del directorio de proyecto en VSCode
# set-location D:\Applications\_Dotfiles\~Shared\Scripts

