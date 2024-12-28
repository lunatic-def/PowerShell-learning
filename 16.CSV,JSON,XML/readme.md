# Work with CSV files
**- Import from csv file:**
```ps
# Import
$employeeData = Import-Csv -Path $csvFilePath -Delimiter ","

foreach($employee in $employeeData){
    Write-Output "Employee $($employee.Name) is a $($employee.Title) from $($employee.Country)"
}

```

**- Export to csv file:**
```ps
$ExportFilePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\16.CSV,JSON,XML\files\testexport.csv"
Get-Service | Select-Object -Property Name,DisplayName,Status,StartType | Export-Csv -Path $ExportFilePath -Delimiter ',' 
```
# Work with JSON files
**- Import from json file:**
```ps
$jsonFilePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\16.CSV,JSON,XML\files\textexport.json"

$jsonData = Get-Content -Path $jsonFilePath | ConvertFrom-Json
$employeeData = $jsonData.Employees
$employeeData | Where-Object Title -eq "Programmer"
```
Output:
```cmd
EmployeeID : 23
name       : Mendez
LastName   : Crosby
DOB        : 06-09-2021
Title      : Programmer

EmployeeID : 22
name       : Sheena
LastName   : Fulton
DOB        : 13-08-2023
Title      : Programmer
```
- Convert CSV to JSON file
```ps

```

**- Export to json file:**
# Work with XML files