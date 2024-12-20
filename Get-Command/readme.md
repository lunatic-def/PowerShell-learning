Get-Command: get all the command in powershell

- To find lists of command related to services:
```ps
Get-Command -noun service
```

Output
```cmd
CommandType     Name
-----------     ----
Cmdlet          Get-Service
Cmdlet          New-Service
Cmdlet          Remove-Service
Cmdlet          Restart-Service
Cmdlet          Resume-Service
Cmdlet          Set-Service
Cmdlet          Start-Service
Cmdlet          Stop-Service
Cmdlet          Suspend-Service

```