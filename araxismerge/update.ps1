Import-Module au

$releases = 'https://www.araxis.com/merge/documentation-windows/release-notes.en'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_GetLatest {
    $downloadPage = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re64  = "https://www\.araxis\.com/download/Merge(?<version>\d{4}\.\d{4,})-(x64)\.msi"
    $url64 = $downloadPage.links | ? href -match $re64 | select -First 1 -expand href
    # Use the version of the latest x64 package. Win32 version is no longer updated.
    $version = $matches.version

    $re32  = "https://www\.araxis\.com/download/Merge(?<version>\d{4}\.\d{4,})-(Win32)\.msi"
    $url32 = $downloadPage.links | ? href -match $re32 | select -First 1 -expand href
    
    $Latest = @{ URL32 = $url32; URL64 = $url64; Version = $version }
    return $Latest
}

update-package -ChecksumFor all
