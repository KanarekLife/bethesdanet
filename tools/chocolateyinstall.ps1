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
  checksum      = '19F03F87D06EE0B65E320A2E09AB5BF78D905BCCEB19DF59998228039F45ECFF'
  checksumType  = 'sha256'
  checksum64    = '19F03F87D06EE0B65E320A2E09AB5BF78D905BCCEB19DF59998228039F45ECFF'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs