# For loop

```ps
for($i=0;$i -lt 10;$i++){
    Write-Output $i
}

$testArray=@('Steve','John','Tim')

for($i=0; $i -lt $testArray.Length;$i++){
    $testArray[$i]+= ' Doe'
}

$testArray
```
Output:
```cmd
Steve Doe
John Doe
Tim Doe
```

# While loop
```ps
while ($true) {
    Write-Output "Welcome to the parrot application"
    Write-Output "Enter 'q' to exist"

    $input = Read-Host -Prompt "pls enter sth"
    if ($input -eq 'q') {break}
    Write-Output "You entered: $input"
}
```
# Do + Until
```ps
do{
    Write-Output "Hi"
}until($false)

do{
    $input = Read-Host -Prompt "pls enter sth"
    if ($input -ne 'q') {
    Write-Output "You entered: $input"
    }
}until($input -eq 'q')
```
=> Not going to stop until $true