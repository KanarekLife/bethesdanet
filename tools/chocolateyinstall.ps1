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
  checksum      = 'EEA5EA97F2CCCB9BE9CD04B9B0E0CD53ABE5AAE74AA405428770E4F9E430884D'
  checksumType  = 'sha256'
  checksum64    = 'EEA5EA97F2CCCB9BE9CD04B9B0E0CD53ABE5AAE74AA405428770E4F9E430884D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs