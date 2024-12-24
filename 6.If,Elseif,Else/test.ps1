 $filePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\6.If,Elseif,Else\text.txt"
 Test-Path -Path $filePath

 if(Test-Path -Path $filePath){
    Write-Output "File exist !"
    $fileContent = Get-Content -Path $filePath
    if ($fileContent.Count -lt 2){
        Write-Output "This file is less than 2 lines"
    }elseif ($fileContent.Count -lt 4){
        Write-Output "This file id less than 4 lines but at least 2 "
    }else{ Write-Output "This file have 4 or more lines"}

 }else{
    Write-Output "File $filePath does not exits"
 }