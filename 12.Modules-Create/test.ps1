# modules manifest
New-ModuleManifest -Path "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\12.Modules-Create\Configurations\Configurations.psd1" -Author "AnhLa" -Description "This is the configuration module" -ModuleVersion "1.0.0" -RootModule "Configurations.psm1"

# $($env:PSModulePath).Split(';')
$ModuleDir = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\12.Modules-Create\Configurations"
Import-Module $ModuleDir -Force
Get-Module Configurations

Get-Command -Module Configurations 
Get-Help Get-Configuration -Full