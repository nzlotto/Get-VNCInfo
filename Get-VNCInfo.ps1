function Get-VNCInfo ($computerName){
    $startDate = (get-date).AddDays(-7)
    Write-Host "Getting VNC log for the last seven days from $computerName"
    Get-WinEvent -ComputerName $computerName -FilterHashtable @{LogName = "Application"; providerName = "VNC Server"; starttime=$startDate}
    }