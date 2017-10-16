$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2017.4929-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2017.4929-x64.msi'
$checksum32  = 'bdaf4a5f025e9f2e4059e39c5d8212ef164bd9efd8d6a08e818c39302cbafa47'
$checksum64  = 'ab62e90c94a5c31f66d37bd36744cad06808aa3bd225cf26703749f204329f22'
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
