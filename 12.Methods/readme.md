# Create function with paramter input
```ps
$ConfigPath="C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\12.Methods\Configs"

function Create-Configuration {
    [CmdletBinding()]
    # Parameters
    param(
        # Mandatory -> a param must be provide to run the function
        [Parameter(Mandatory)]
        [string]$Name,
        [Parameter()]
        [string]$Version="1.0.0",
        [Parameter(Mandatory)]
        [string]$Path,
        [Parameter()]
        [ValidateSet("Linux","Windows")]
        [string]$OperatingSystem="Windows"
        
    )
    Write-Output "Create a configuration name: $Name with version $Version"
    New-Item -Path $Path -Name "$($Name).cfg" -ItemType File
    $Version | Out-File -FilePath "$Path\$($Name).cfg" -Force
    $OperatingSystem | Out-File -FilePath "$Path\$($Name).cfg" -Append -Force

}
#Method 1 Input from cmd
Create-Configuration
#Method 2
Create-Configuration -Name "ButtPlug" -Version "1.0.1" -Path $ConfigPath -OperatingSystem Windows
```
Output:
```cmd
Supply values for the following parameters:
Name: ButtPlug 
Create a configuration name: ButtPlug
Create a configuration name: KittyKat
```

# Function with Begin,Process,End
- use the begin,process,end blocks

```ps
$ConfigPath="C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\12.Methods\Configs"

function Create-Configuration {
    [CmdletBinding()]
    # Parameters
    param(
        # Mandatory -> a param must be provide to run the function
        [Parameter(Mandatory,ValueFromPipeline)]
        [string]$Name,
        [Parameter()]
        [string]$Version="1.0.0",
        [Parameter(Mandatory)]
        [string]$Path,
        [Parameter()]
        [ValidateSet("Linux","Windows")]
        [string]$OperatingSystem="Windows"
        
    )

    begin {( Write-Output "######### This is the begin block")}

    process {
        Write-Output "Create a configuration name: $Name with version $Version"
        New-Item -Path $Path -Name "$($Name).cfg" -ItemType File
        $Version | Out-File -FilePath "$Path\$($Name).cfg" -Force
        $OperatingSystem | Out-File -FilePath "$Path\$($Name).cfg" -Append -Force
    }

    end{ Write-Output "######### This is the end block" }
}

$Names = @('Test1','Test2','Test3')
$Names | Create-Configuration -Path $ConfigPath
```

Output:
```cmd
######### This is the begin block
Create a configuration name: Test1 with version 1.0.0

    Directory: C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\12.Methods\Configs

Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a---          12/25/2024  5:29 PM              0 Test1.cfg
Create a configuration name: Test2 with version 1.0.0
-a---          12/25/2024  5:29 PM              0 Test2.cfg
Create a configuration name: Test3 with version 1.0.0
-a---          12/25/2024  5:29 PM              0 Test3.cfg
######### This is the end block
``