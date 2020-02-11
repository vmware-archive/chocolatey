$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  UnzipLocation = $toolsDir
  Url64bit      = 'https://github.com/projectriff/cli/releases/download/v0.5.0/riff-windows-amd64.zip'
  Checksum64    = '46fc3190b70b4ae2947ed29dfd1b4c962f4affb40c7237264043c31663b82c67'
  ChecksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
Remove-Item "$toolsDir\riff-windows*.zip"