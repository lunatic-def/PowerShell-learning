# for($i=0;$i -lt 10;$i++){
#     Write-Output $i
# }

# $testArray=@('Steve','John','Tim')

# for($i=0; $i -lt $testArray.Length;$i++){
#     $testArray[$i]+= ' Doe'
# }

# $testArray


# while ($true) {
#     Write-Output "Welcome to the parrot application"
#     Write-Output "Enter 'q' to exist"

#     $input = Read-Host -Prompt "pls enter sth"
#     if ($input -eq 'q') {break}
#     Write-Output "You entered: $input"
# }

do{
    $input = Read-Host -Prompt "pls enter sth"
    if ($input -ne 'q') {
    Write-Output "You entered: $input"
    }
}until($input -eq 'q')