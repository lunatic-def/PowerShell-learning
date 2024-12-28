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