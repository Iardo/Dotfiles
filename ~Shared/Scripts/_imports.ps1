# importación de modulos
# IMPORT
$shell = "$env:USERPROFILE\.scripts\powershell\"
get-childitem ($shell + "*.psm1") | foreach-object { import-module -disablenamechecking (join-path $shell $_.name)} | out-null

# IMPORT
function safedoc {frunner safedoc}
function manscrap {frunner manscrap}
function manrem {frunner manrem}

