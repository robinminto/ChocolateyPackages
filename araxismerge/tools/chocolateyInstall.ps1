$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2018.5004-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2018.5004-x64.msi'
$checksum32  = 'ae2efe01354e9c098df79bded579886f4c1a087cf88e7e627c4c68e1a37a8be4'
$checksum64  = '33e03364252fb3a5a03366a271e853258665622c290aa5e1dfd3280967d5b8ea'
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
