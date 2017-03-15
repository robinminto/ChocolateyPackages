$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2017.4842-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2017.4842-x64.msi'
$checksum32  = 'a00ac615da1cfb2366b931a8bf7cf1a9a3493c443766a15da54ab6f42f0f1ed3'
$checksum64  = '91ab1ae67e96c36fb0e726c950d70cfa840e3cfe83a2ceb09a01b034adee1351'
$silentArgs = '/quiet'
$validExitCodes = @(0)

$packageArgs = @{
  packageName    = $packageName
  installerType  = $installerType
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = $silentArgs
  validExitCodes = $validExitCodes
}
Install-ChocolateyPackage @packageArgs
