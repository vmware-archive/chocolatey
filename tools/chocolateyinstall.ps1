$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = 'https://github.com/projectriff/riff/releases/download/v0.3.1/riff-windows-amd64.zip'
  Checksum64    = 'a6bc229357f8e8d36ec5204158cbaa2a162fe34a63c16d7ddead56f848e70f23'
  ChecksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Remove-Item "$toolsDir\riff-windows*.zip"