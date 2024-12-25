$ErrorActionPreference = "Stop"
try{
    $filePath="C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\10-ErrorHandling2"
    $files=Get-ChildItem -Path $filePath
    $files.ForEach({
        Write-Output $_.name
    })
    Write-Output "This is after the error"
}catch{
    Write-Output $_.Exception.Message
}finally{
    Write-Output "This will always run"
}

