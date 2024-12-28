$ConfigPath="C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\12.Methods\Configs"

function Create-Configuration {
    [CmdletBinding()]
    # Parameters
    param(
        # Mandatory -> a param must be provide to run the function
        [Parameter(Mandatory,ValueFromPipeline,ValueFromPipelineByPropertyName)]
        [string]$Name,
        [Parameter(ValueFromPipelineByPropertyName)]
        [string]$Version="1.0.0",
        [Parameter(Mandatory)]
        [string]$Path,
        [Parameter(ValueFromPipelineByPropertyName)]
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

# $IIServer =[PSCustomObject]@{
#     Name = 'IISServer2022'
#     Version = '1.0.3'
#     OperatingSystem = 'Windows'
# }

# $IIServer | Create-Configuration -Path $ConfigPath

$ServerCSV = Import-Csv -Path "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\12.Methods\servers.csv" -Delimiter ','

$ServerCSV | Create-Configuration -Path $ConfigPath -Verbose
