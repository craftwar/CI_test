Write-Host "Downloading..."
$exePath = "$env:TEMP\winsdksetup.exe"
(New-Object Net.WebClient).DownloadFile('https://go.microsoft.com/fwlink/?linkid=2164145', $exePath)

Write-Host "Installing..."
cmd /c start /wait $exePath /features OptionId.DesktopCPPx86 OptionId.DesktopCPPx64 /norestart /q /ceip off
Remove-Item $exePath
