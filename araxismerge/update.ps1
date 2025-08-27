Import-Module au

$releases = 'https://www.araxis.com/merge/documentation-windows/release-notes.en'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.Url64
}

function global:au_GetLatest {
    $downloadPage = Invoke-WebRequest -Uri $releases -UseBasicParsing

    $re64  = "https://www\.araxis\.com/download/Merge(?<version>\d{4}\.\d{1,})-(x64)\.msi"
    $url64 = $downloadPage.links | Where-Object href -Match $re64 | Select-Object -First 1 -ExpandProperty href
    $version = $matches.version

    $Latest = @{ URL64 = $url64; Version = $version }
    return $Latest
}

Update-Package -ChecksumFor None

git add .\araxismerge.nuspec
git add .\tools\chocolateyInstall.ps1
git commit -m "Araxis Merge $($Latest.Version)"
