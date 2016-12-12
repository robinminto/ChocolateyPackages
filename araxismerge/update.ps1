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

    $re  = "https://www\.araxis\.com/download/Merge(?<version>\d{4}\.\d{4,})-(x64|Win32)\.msi"
    $url = $downloadPage.links | ? href -match $re | select -First 2 -expand href

    $version = $matches.version
    $url64 = $url[0]
    $url32 = $url[1]

    $Latest = @{ URL32 = $url32; URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor all
