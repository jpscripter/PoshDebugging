#ISE Demo

# Jypter Notebooks dont do well with Debug. Copy and paste this outside.
# Script with logic bug we need to step through


Set-Location C:\Repos\PoshDebugging\Examples
Import-Module ..\Module\Module.psm1

$UserKeys = Get-ChildItem -path HKCU:\ 
$RestrictedKeys = @()
for($I = 0; $i -le $UserKeys.length; $I ++){
    Try{
        $Key = $UserKeys.name
        $null = Get-ChildItem  HKCU:\$Key  -ErrorAction Stop
    }catch{
        $RestrictedKeys += $Namespace
    }
}

if ($RestrictedKeys -eq $Null){
    Write-output -InputObject "Can not access Object $RestrictedKeys"
}