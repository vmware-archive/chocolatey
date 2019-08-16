$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = 'https://storage.googleapis.com/projectriff/riff-cli/releases/v0.4.0/riff-windows-amd64.zip'
  Checksum64    = '2c8f288706c6f19eaa3c0f577e2daf3ef60d839879e7eb5e4be728cd124d9dba'
  ChecksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Remove-Item "$toolsDir\riff-windows*.zip"