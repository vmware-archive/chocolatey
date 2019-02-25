$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = "https://github.com/projectriff/riff/releases/download/v0.2.0/riff-windows-amd64.zip"
  Checksum64    = '03620d3c83493ab57b9a3982a785f74a8e89b0af8450e728d2761279456e8285'
  ChecksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Remove-Item "$toolsDir\riff-windows*.zip"