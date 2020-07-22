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
  checksum      = '8B1CDA5FF35E38036C2BF3076E219CBF54DA7A3DB921564E2DBC092B5C36B718'
  checksumType  = 'sha256'
  checksum64    = '8B1CDA5FF35E38036C2BF3076E219CBF54DA7A3DB921564E2DBC092B5C36B718'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs