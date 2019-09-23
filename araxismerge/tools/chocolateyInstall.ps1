$packageName = 'araxismerge'
$installerType = 'MSI'
$url32 = 'https://www.araxis.com/download/Merge2019.5174-x64.msi'
$url64 = 'https://www.araxis.com/download/Merge2019.5187-x64.msi'
$checksum32  = 'fad54984ba82582eb0c91425f0d3d26f1a03aa2413ffd493ff5958e33007a479'
$checksum64  = '87f753d8d7a1991fb0290ba55ebef8ade3907f03eace4809d5da5ed9ffe836bf'
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
