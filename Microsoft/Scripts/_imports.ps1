# PATHS
$shell = "$env:USERPROFILE\.scripts\powershell\"
$nodes = "$env:USERPROFILE\.scripts\node\"

# IMPORT
import-module $shell\adminsudo.psm1 -disablenamechecking
import-module $shell\dnswap.psm1 -disablenamechecking
import-module $shell\fastrunner.psm1 -disablenamechecking


