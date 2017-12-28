$ErrorActionPreference = 'Stop';

$depExe = Get-ChildItem $(Split-Path -Parent $MyInvocation.MyCommand.Definition) | Where-Object -Property Name -Match "dep.exe"

if (-Not($depExe)) 
{
    Write-Error -Message "dep exe is not found, please contact the maintainer of the package" -Category ResourceUnavailable
}

Write-Host "found dep exe in $($depExe.FullName)"
Write-Host "attempting to remove it" 
Remove-Item $depExe.FullName