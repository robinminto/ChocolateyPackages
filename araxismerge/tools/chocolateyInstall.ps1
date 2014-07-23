$packageName = 'araxismerge'
$installerType = 'MSI'
$url = 'http://www.araxis.com/download/Merge2013.4377-win32.msi'
$url64 = 'http://www.araxis.com/download/Merge2013.4377-x64.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
