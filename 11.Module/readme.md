# Environment Variable
- Get modules path:
```ps
$($env:PSModulePath).Split(';')
```
# Get Modules
**- Get modules that are current loaded in your session.**
```ps
Get-Module
```
Output:

```cmd
ModuleType Version    PreRelease Name                                ExportedCommands     
---------- -------    ---------- ----                                ----------------     
Manifest                  Microsoft.PowerShell.Management     {Add-Content, Clear… 
Manifest                  Microsoft.PowerShell.Security       {ConvertFrom-Secure… 
Manifest                  Microsoft.PowerShell.Utility        {Add-Member, Add-Ty… 
Script                    PowerShellEditorServices.Commands   {Clear-Host, Conver… 
Script           beta0      PSReadLine                          {Get-PSReadLineKeyH… 
```
**- Get current available modules:**
```ps
Get-Module -ListAvailable
```

**- Import module to your current session:**
```ps
Import-Module -Name ScheduledTasks

Get-Command -Module ScheduledTasks
```
Output:
```cmd
ModuleType Version    PreRelease Name                                ExportedCommands     
---------- -------    ---------- ----                                ----------------     
Manifest                  Microsoft.PowerShell.Management     {Add-Content, Clear… 
Manifest                  Microsoft.PowerShell.Security       {ConvertFrom-Secure… 
Manifest                  Microsoft.PowerShell.Utility        {Add-Member, Add-Ty… 
Script                    PowerShellEditorServices.Commands   {Clear-Host, Conver… 
Script                    beta0      PSReadLine                          {Get-PSReadLineKeyH… 
Manifest                  ScheduledTasks                      {Disable-ScheduledT… 

```

# Remove Modules
```ps
Remove-Module ScheduledTasks
```
# Install Modules
**- Update existing module**
```ps
Import-Module -Name Scheduled -Force => For update function if needed
```

**- Find & Install modules in the PS gallery**
```ps
Find-Module -Name AzureAD
Install-Module -Name AzureAD
Import-Module AzureAD
Get-Module
```
Output:
```cmd
Version              Name                                Repository           Description
-------              ----                                ----------           -----------
2.0.2.182            AzureAD                             PSGallery            Azure Active
```

# Uninstall Modules
- Need to run as Administrator:
```ps
Remove-Module AzureAD
Uninstall-Module -Name AzureAD
```