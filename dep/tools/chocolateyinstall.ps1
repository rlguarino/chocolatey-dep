$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = "https://github.com/golang/dep/releases/download/v$($env:ChocolateyPackageVersion)/dep-windows-amd64.exe"
  FileFullPath  = "$toolsDir/dep.exe"
  Checksum64    = '61E542FCF5AEBA57129387F3FF1DAE006C13A6F09FBE1FFC2E9867A4555CEE1D'
  ChecksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs