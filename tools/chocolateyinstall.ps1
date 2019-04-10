$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = 'https://github.com/projectriff/riff/releases/download/v0.3.0/riff-windows-amd64.zip'
  Checksum64    = '568ef7ae1e692c81f33a74083dcfadf137d594593ed5e286438df98c46a465d2'
  ChecksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Remove-Item "$toolsDir\riff-windows*.zip"