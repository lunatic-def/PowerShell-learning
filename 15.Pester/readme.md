# Pester
- Unit testing, running test - environment or module or deployment

- Test file:
```ps
param(
    $ComputerName,
    $Credentials
)
Describe 'Checking deployment'{
    Context 'Cheking windows services'{
        It 'Making sure the print spooler is running'{
            $Service=Invoke-Command -ComputerName -Credential $Credentials -ScriptBlock {
                Get-Service Spooler
            }
            $Service.status | Should be 'Running'

        }
    }
}
```
- Excute on remote server
```ps1
$ScripParameters=@{
    Path="C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\15.Pester\pestertester.ps1"
    Paramters=@{
        ComputerName='172.30.123.5'
        Credetials=Get-Credential
    }
}
Invoke-Pester -Script $ScripParameters
```