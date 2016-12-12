$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2016.4801-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2016.4801-x64.msi'
$checksum32  = '841b9f47381b3af62c748335e6a2093d711912edbf8c5fa0b31f3d9ce5723dc7'
$checksum64  = '7052f66054dd1e1f0d257905ec3f99cf055d774640c9695c9368410fb470adaa'
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
