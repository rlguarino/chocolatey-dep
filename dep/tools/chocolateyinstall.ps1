$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = "https://github.com/golang/dep/releases/download/v$($env:ChocolateyPackageVersion)/dep-windows-amd64"
  FileFullPath  = "$toolsDir/dep.exe"
  Checksum64    = 'f6e6a872c54d5ae7536ac71fd5bcac9f4e7b8a1dafa1ef7c23866e2f3069fe4e'
  ChecksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs