$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2018.5059-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2022.5754-x64.msi'
$checksum32  = '5c220833b218a7f5355d724bf49deb93ba6168049362c6423901568ce8074e48'
$checksum64  = '32ae3a570b8bb116262b53662e18bdbb0edc472d7a36cde0a8cdb9abae5433e0'
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
