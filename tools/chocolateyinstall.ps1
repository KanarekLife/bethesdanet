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
  checksum      = '3368C7A73B5563C134D41F143236995370C60916C997AF9D0C454F534DFF0DF9'
  checksumType  = 'sha256'
  checksum64    = '3368C7A73B5563C134D41F143236995370C60916C997AF9D0C454F534DFF0DF9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs