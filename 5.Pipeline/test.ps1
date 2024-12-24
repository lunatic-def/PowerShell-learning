$svcname = New-Object -TypeName System.Collections.ArrayList
$svcname.AddRange(@('spooler','w32time'))

$svcname | Get-Service
$svcname | Get-Service | Stop-Service
$svcname | Get-Service | ForEach-Object{Write-Output "Service: $($_.DisplayName) is currently $($_.Status)"}

# Get-Help Stop-Service -Full # Require parameter of  -InputObject <ServiceController[]>
# (Get-Service -Name $svcname).GetType() # ServiceController

# Get-Service -Name $svcname  | Stop-Service
# Get-Service -Name $svcname

# $svcname | Get-Service

$svcname[0].DisplayName