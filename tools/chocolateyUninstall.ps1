$ErrorActionPreference = 'Stop'

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Remove-BinFile -Name "riff" -Path "$toolsDir\riff.exe"