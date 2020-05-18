$file = (Get-ChildItem araxismerge*.nupkg | Sort-Object LastWriteTime | Select-Object -last 1).Name
choco push $file --source https://push.chocolatey.org/