# PS remoting
**- Connect to remote PC - Domain Controller servers**
```ps
$env:COMPUTERNAME

$testBlock={Write-Output "This is a script block"}

& $testBlock

$Creds=Get-Credential

$localVariable="This is from the local machine"
#Target machine IP, Domain Controller Server
Invoke-Command -ComputerName "172.30.123.5" -Credential $Creds -ScriptBlock {
    Write-Output "This is running on $($env:COMPUTERNAME) and using local variable $($using:localVariable)"
}
```

**- Get Variable from remote server:**
```ps
$user = Invoke-Command -ComputerName "172.30.123.5" -Credential $Creds -ScriptBlock{
    get-aduser -filter * -server abc.ca
}
```

**- Get sessions to remote server**
```ps
$session=New-PSSession -ComputerName 172.30.123.5 -Credential $Creds
Enter-PSSession -Session $session
Exit-PSSession
```
**- Disconnect session**
```ps
Get-PSSession
Disconnect-PSSession -Session $session
Remove-PSSession -Session $session

# Disconnect all sessions
Get-PSSession | Disconnect-PSSession | Remove-PSSession
```