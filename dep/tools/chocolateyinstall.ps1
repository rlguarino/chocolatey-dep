$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  FileFullPath  = "$toolsDir/dep.exe"
  Url64bit      = "https://github.com/golang/dep/releases/download/v$($env:ChocolateyPackageVersion)/dep-windows-amd64.exe"
  Checksum64    = '61E542FCF5AEBA57129387F3FF1DAE006C13A6F09FBE1FFC2E9867A4555CEE1D'
  ChecksumType64= 'sha256'
  Url           = "https://github.com/golang/dep/releases/download/v$($env:ChocolateyPackageVersion)/dep-windows-386.exe"
  Checksum      = 'b4b2157cf6cec9c5ed03e30e9e1c1fce61c3ad9178b16942ea349cbb7dbce4b3'
  ChecksumType  = 'sha256'
}

Get-ChocolateyWebFile @packageArgs