$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = "https://github.com/golang/dep/releases/download/v$($env:ChocolateyPackageVersion)/dep-windows-amd64.exe"
  FileFullPath  = "$toolsDir/dep.exe"
  Checksum64    = '9cd5925582a0291f44281d09e3b1ddb8c555a3dd5097fabca1a5ebd3202de88b'
  ChecksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs