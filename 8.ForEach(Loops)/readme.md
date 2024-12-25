# ForEach (loops)
- Loops to create folders based on the path:
```ps
$filePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\8-ForEach(Loops)\text.txt"
$folderPath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\8-ForEach(Loops)\Share"
$folderName= Get-Content -Path $filePath

#Create folder
#New-Item -Path "$folderPath" -Name $folderName[0] -ItemType Directory

# Method 1
foreach($name in $folderName){
    if ((Test-Path -Path "$folderPath\$name") -eq $false ){
        New-Item -Path "$folderPath" -Name $name -ItemType Directory
    }else{
        Write-Output "Folder Exists"
    }
}

# Method 2
$folderName | ForEach-Object -Process{
    if ((Test-Path -Path "$folderPath\$_") -eq $false ){
        New-Item -Path "$folderPath" -Name $_ -ItemType Directory
    }else{
        Write-Output "Folder Exists"
    }
}

# Method 3
$folderName.ForEach(
    {
        if ((Test-Path -Path "$folderPath\$_") -eq $false ){
            New-Item -Path "$folderPath" -Name $_ -ItemType Directory
        }else{
            Write-Output "Folder Exists"
        }
    }
)
```
