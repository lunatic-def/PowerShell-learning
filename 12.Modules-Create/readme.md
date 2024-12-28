
**- Get module path**
```ps
$($env:PSModulePath).Split(';')
```

# Create modules
- Create 'psm1' -> module file
```ps
# modules manifest
New-ModuleManifest -Path "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\13.Modules-Create\Configurations\Configurations.psd1" -Author "AnhLa" -Description "This is the configuration module" -ModuleVersion "1.0.0" -RootModule "Configurations.psm1"

$ModuleDir = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\13.Modules-Create\Configurations"
Import-Module $ModuleDir
Get-Module Configurations

Get-Command -Module Configurations
```
Output:
```cmd
ModuleType Version    PreRelease Name                                ExportedCommands     
---------- -------    ---------- ----                                ----------------     
Script     1.0.0                 Configurations                      {Get-Configuration,… 


CommandType     Name                                               Version    Source      
-----------     ----                                               -------    ------      
Function        Get-Configuration                                  1.0.0      Configurat… 
Function        Set-Configuration                                  1.0.0      Configurat… 

```
# Make change to the module
- You will need to force the chance 
```ps
$ModuleDir = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\13.Modules-Create\Configurations"
Import-Module $ModuleDir -Force
```
