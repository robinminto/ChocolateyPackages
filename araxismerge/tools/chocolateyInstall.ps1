$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2018.5059-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2023.5877-x64.msi'
$checksum32  = '5c220833b218a7f5355d724bf49deb93ba6168049362c6423901568ce8074e48'
$checksum64  = '3e4ec5217cc7243f163b0b8ec239b941e153e1ba37c4f140f91e7ba89128173a'
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
