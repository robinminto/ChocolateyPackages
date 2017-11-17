$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2017.4940-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2017.4940-x64.msi'
$checksum32  = '287a817725519a35c57df2933ebdeb905d4b2d02afe07a48fdc6b46ea120f3b6'
$checksum64  = '87a39cf7f1db81c5f610dcf5343c653055397f04b0fca6767bbb76d240d5b5db'
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
