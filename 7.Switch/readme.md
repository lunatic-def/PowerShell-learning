# Switch statement

```ps

$filePath="C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\7.Switch\text.txt"

$Data = Get-Content -Path $filePath

$first = $Data[0]

$first

switch ($first) {
    "Jewel"{
        Write-Output "My name is Jewel"
        break
    }
    "Erwin"{
        Write-Output "My name is Erwin"
        break
    }
    "Elwood"{
        Write-Output "My name is Elwood"
        break
    }
    default{
        Write-Output "I don't know my name"
    }
}

# Example 2
$Data.Count
switch ($Data.Count) {
    {$_ -lt 2} { 
        Write-Output "This file has less than 2 lines" 
        break 
    }
    {$_ -eq 7} {
        Write-Output "This file has 7 lines" 
        break
    }
    {$_ -in (8..9)} {
        Write-Output "This file has 8 to 9 lines" 
        break
    }
    Default {
        Write-Output "This file has 10 or more lines"
    }
}
```

Output:
```cmd
Jewel
My name is Jewel
8
This file has 8 to 9 lines
```