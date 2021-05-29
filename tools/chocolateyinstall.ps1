$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.cdp.bethesda.net/BethesdaNetLauncher_Setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Bethesda.net Launcher'
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  checksum      = 'FD5A7D3802A983CB5F96346B33A31B4C0CE5AF73986DEDCD47932A677C079B28'
  checksumType  = 'sha256'
  checksum64    = 'FD5A7D3802A983CB5F96346B33A31B4C0CE5AF73986DEDCD47932A677C079B28'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs