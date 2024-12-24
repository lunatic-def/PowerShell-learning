# Pipeline
Example of: 
Talking result from a cmdlet and use pipeline to past the result into another cmdlet.
=> Keep piping through multiple cmdlet in order to get everthing on one line constanly
=> loop process through the result data

```ps
$svcname = "Spooler"

# Get-Help Stop-Service -Full # Require parameter of  -InputObject <ServiceController[]>
# (Get-Service -Name $svcname).GetType() # ServiceController

Get-Service -Name $svcname  | Stop-Service
$svcname | Get-Service
```
Output:
```cmd
Status   Name               DisplayName
------   ----               -----------
Stopped  Spooler            Print Spooler
```

```ps
$svcname = New-Object -TypeName System.Collections.ArrayList
$svcname.AddRange(@('spooler','w32time'))

$svcname | Get-Service
$svcname | Get-Service | Stop-Service
$svcname | Get-Service | ForEach-Object{Write-Output "Service: $($_.DisplayName) is currently $($_.Status)"}

```
Output:
```cmd
$svcname | Get-Service

Status   Name               DisplayName
------   ----               -----------
Running  spooler            Print Spooler
Running  w32time            Windows Time

=====

$svcname | Get-Service

Status   Name               DisplayName
------   ----               -----------
Stopped  spooler            Print Spooler
Stopped  w32time            Windows Time
```