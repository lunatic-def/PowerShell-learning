$ScripParameters=@{
    Path="C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\15.Pester\pestertester.ps1"
    Paramters=@{
        ComputerName='172.30.123.5'
        Credetials=Get-Credential
    }
}
Invoke-Pester -Script $ScripParameters