#VSCode Demo

# Jypter Notebooks dont do well with Debug. Copy and paste this outside.
# Script with logic bug we need to step through
Set-Location "C:\Repos\PoshDebugging"
$Folders = Get-ChildItem -Recurse -Directory

Foreach ($FOlder in $Folders){
    $Files = Get-ChildItem -Path $Folder.Fullanme
    if ($Files.Extension.Where({$PSitem -Like '*PS*'}) -NE $Null){
            Write-Output -InputObject "$Folder contains Powershell Files"
    }
}


