$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = "https://github.com/golang/dep/releases/download/v$($env:ChocolateyPackageVersion)/dep-windows-amd64"
  FileFullPath  = "$toolsDir/dep.exe"
  Checksum64    = '034f8cf6c225fde51aa025376df12450832f111b39050a7ec451a9ec2ce2cb54'
  ChecksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs