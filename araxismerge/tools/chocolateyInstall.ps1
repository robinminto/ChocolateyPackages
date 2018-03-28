$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2018.4988-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2018.4988-x64.msi'
$checksum32  = '0b777da849b9d703a540c76cc4959f27f6b353f1672a479f0e3e18526d5d62dc'
$checksum64  = '69ada5aa5dae57492c72c18c9d270cb6447edbc530c03d925fe16bc450e5e668'
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
