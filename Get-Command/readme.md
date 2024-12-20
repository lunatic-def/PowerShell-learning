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

- Get all the functions of a command:
```ps
Get-Help Get-Service -Full
```

Output
```cmd
NAME
    Get-Service

SYNTAX
    Get-Service [[-Name] <string[]>]
    [-DependentServices] [-RequiredServices] [-Include   
    <string[]>] [-Exclude <string[]>]
    [<CommonParameters>]

    Get-Service -DisplayName <string[]>
    [-DependentServices] [-RequiredServices] [-Include   
    <string[]>] [-Exclude <string[]>]
    [<CommonParameters>]

    Get-Service [-DependentServices]
    [-RequiredServices] [-Include <string[]>] [-Exclude  
    <string[]>] [-InputObject <ServiceController[]>]     
    [<CommonParameters>]


PARAMETERS
```