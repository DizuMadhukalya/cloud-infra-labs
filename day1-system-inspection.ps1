Get-Process | Sort CPU -Descending | Select -First 10
Get-Service | Where-Object {$_.Status -eq "Running"}
Get-EventLog -LogName System -Newest 5
