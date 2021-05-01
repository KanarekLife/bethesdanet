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
  checksum      = '22EC91B742B719B0ABBD50C9250DAA33B0CED38FE61029CBB4AA57E883499E28'
  checksumType  = 'sha256'
  checksum64    = '22EC91B742B719B0ABBD50C9250DAA33B0CED38FE61029CBB4AA57E883499E28'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs