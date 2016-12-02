$packageName = 'araxismerge'
$installerType = 'MSI'
$url = 'https://www.araxis.com/download/Merge2016.4801-Win32.msi'
$url64 = 'https://www.araxis.com/download/Merge2016.4801-x64.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
