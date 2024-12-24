# Set-StrictMode -Version latest
# $myHashTable=@{
#     key_1=100
#     apple=2.34
#     name="Ngoc Anh"
#     key_2=2
#     key_3=$true
# }
# # add to table
# $temp = "==== Added to table " 
# $temp
# $myHashTable.Add('key_4','Value of key_4')
# $myHashTable['key_5']="Value of key_5"
# $myHashTable.key_6="Value of key_6"
# $myHashTable

# #config from table
# $temp = "==== Name changed " 
# $temp
# $myHashTable.name = "Thu Ngan"
# $myHashTable

# #remove from table
# $myHashTable.Remove('apple')
# $temp = "==== The rest of the items " 
# $temp
# $myHashTable


# $myHashTable.ContainsKey("key_4")

# $myHashTable.ContainsValue("Ngoc Anh")
# $Keys = "Keys: " + $myHashTable.Keys
# $Keys 

# $Values = "Values: " + $myHashTable.Values
# $Values

# $SpecValues1 = "Specific values of key_1: " + $myHashTable.key_1
# $SpecValues1

# $SpecValues2 = "Specific values of name: " + $myHashTable['name']
# $SpecValues2

# $myHashTable.GetType()

# Custom object

# $Employee1=New-Object -TypeName PSCustomObject

# Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "EmployeeID" -Value 1001
# Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "FirstName" -Value "Penny"
# Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "Title" -Value "CEO"
# Get-Member -InputObject $Employee1
# $Employee1
# $Employee1.EmployeeID
#$Employee1.GetType()

$Employee2=[PSCustomObject]@{
    EmployeeID = 1002
    FirtName = 'Lunatic'
    Title = 'Engineer'
}

$Employee2.GetType()
