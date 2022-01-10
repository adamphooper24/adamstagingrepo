Write-Output "***** Download and install Advanced Monitoring Agent GP"

# download MSI from vendor
Invoke-WebRequest -Uri 'https://downloads.n4stack.io/files/agent.msi' -OutFile 'c:\downloads\agent.msi'
Invoke-WebRequest -Uri 'https://downloads.n4stack.io/files/package.zip' -OutFile 'c:\downloads\package.zip'

# install MSI
Start-Process 'C:\Windows\System32\msiexec.exe' " /i ""c:\downloads\agent.msi"" /qn" -NoNewWindow -Wait


Write-Output "***** "Advanced Monitoring Agent GP installed"