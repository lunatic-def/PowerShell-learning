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

    begin {
        Write-Output "###### Begin block"
        $CounterPassed=0
        $CounterFailed=0
    }

    process {
        try{
        Write-Output "Create a configuration name: $Name with version $Version"
        New-Item -Path $Path -Name "$($Name).cfg" -ItemType File
        $Version | Out-File -FilePath "$Path\$($Name).cfg" -Force
        $OperatingSystem | Out-File -FilePath "$Path\$($Name).cfg" -Append -Force
        $CounterPassed++
        }catch{
            Write-Output $_.Exception.Message
            $CounterFailed++
        }
    }

    end{ 
        Write-Output " ###### End Block"
        Write-Output "Configurations created: $CounterPassed, Configurations failed: $CounterFailed"
    }
}

$Names = @('Test1','Test2','Test3')
$Names | Create-Configuration -Path $ConfigPath


#Method 1 Input from cmd
# Create-Configuration
# #Method 2
# Create-Configuration -Name "ButtPlug" -Version "1.0.1" -Path $ConfigPath -OperatingSystem Windows


