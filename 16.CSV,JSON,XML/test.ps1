# $csvFilePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\16.CSV,JSON,XML\files\semitest.csv"

# Import
# $employeeData = Import-Csv -Path $csvFilePath -Delimiter ","

# foreach($employee in $employeeData){
#     Write-Output "Employee $($employee.Name) is a $($employee.Title) from $($employee.Country)"
# }

# Export
# $ExportFilePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\16.CSV,JSON,XML\files\testexport.csv"
# Get-Service | Select-Object -Property Name,DisplayName,Status,StartType,@{Name="Time";Expression={Get-Date -Format "MM-dd-yyyy HH:mm:ss"}} | Export-Csv -Path $ExportFilePath -Delimiter ',' 

# Import JSON 
$jsonFilePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\16.CSV,JSON,XML\files\textexport.json"

$jsonData = Get-Content -Path $jsonFilePath | ConvertFrom-Json
$employeeData = $jsonData.Employees
$employeeData | Where-Object Title -eq "Programmer"

$csvFilePath = "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\16.CSV,JSON,XML\files\Employees.csv"
$csvData = Import-Csv -Path $csvFilePath

$csvData | ConvertTo-Json | Out-File -FilePath "C:\Users\Thu Ngan\Code\Powershell\PowerShell-learning\16.CSV,JSON,XML\files\Employees.json"


