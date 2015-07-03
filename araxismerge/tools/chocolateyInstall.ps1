﻿$packageName = 'araxismerge'
$installerType = 'MSI'
$url = 'http://www.araxis.com/download/Merge2015.4634-Win32.msi'
$url64 = 'http://www.araxis.com/download/Merge2015.4634-x64.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
