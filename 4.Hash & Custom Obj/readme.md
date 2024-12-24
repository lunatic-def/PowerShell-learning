# Data structure and data collection

# Hash table
- Unique key for every items in the table 
- Key have to be unique
```ps
$myHashTable=@{
    key_1=100
    apple=2.34
    name="Ngoc Anh"
    Key_2=2
    Key_3=$true
}

$myHashTable.GetType()
```

Output:
```cmd
IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     True     Hashtable                                System.Object
```

# Hash table properties
```ps
$myHashTable=@{
    key_1=100
    apple=2.34
    name="Ngoc Anh"
    key_2=2
    key_3=$true
}


$Keys = "Keys: " + $myHashTable.Keys
$Keys 

$Values = "Values: " + $myHashTable.Values
$Values

$SpecValues1 = "Specific values of key_1: " + $myHashTable.key_1
$SpecValues1

$SpecValues2 = "Specific values of name: " + $myHashTable['name']
$SpecValues2
```

Output:
```cmd
Keys: key_2 name key_3 key_1 apple
Values: 2 Ngoc Anh True 100 2.34
Specific values of key_1: 100
Specific values of name: Ngoc Anh
```

# Check for keys and values
```ps
    key_1=100
    apple=2.34
    name="Ngoc Anh"
    key_2=2
    key_3=$true
}

$myHashTable.ContainsKey("key_4")
$myHashTable.ContainsValue("Ngoc Anh")
```
Output:
```cmd
False
True
```
# Add or remove items
```ps
# Set-StrictMode -Version latest
$myHashTable=@{
    key_1=100
    apple=2.34
    name="Ngoc Anh"
    key_2=2
    key_3=$true
}
# add to table
$temp = "==== Added to table " 
$temp
$myHashTable.Add('key_4','Value of key_4')
$myHashTable['key_5']="Value of key_5"
$myHashTable.key_6="Value of key_6"
$myHashTable

#config from table
$temp = "==== Name changed " 
$temp
$myHashTable.name = "Thu Ngan"
$myHashTable

#remove from table
$myHashTable.Remove('apple')
$temp = "==== The rest of the items " 
$temp
$myHashTable
```

Output:
```cmd
==== Added to table 

Name                           Value
----                           -----
key_2                          2
apple                          2.34
key_1                          100
key_4                          Value of key_4
key_6                          Value of key_6
name                           Ngoc Anh
key_5                          Value of key_5
key_3                          True
==== Name changed
key_2                          2
apple                          2.34
key_1                          100
key_4                          Value of key_4
key_6                          Value of key_6
name                           Thu Ngan
key_5                          Value of key_5
key_3                          True
==== The rest of the items
key_2                          2
key_1                          100
key_4                          Value of key_4
key_6                          Value of key_6
name                           Thu Ngan
key_5                          Value of key_5
key_3                          True

```


### Custom objects
- An objs with many values
```ps
#Method 1
$Employee1=New-Object -TypeName PSCustomObject
$Employee1.GetType()

#Method 2
$Employee2=[PSCustomObject]@{
    EmployeeID = 1002
    FirtName = 'Lunatic'
    Title = 'Engineer'
}
```
Output:
```cmd
IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     False    PSCustomObject                           System.Object

```
# Add member to custom obj
```ps
$Employee1=New-Object -TypeName PSCustomObject

Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "EmployeeID" -Value '1001'
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "FirstName" -Value "Penny"
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "Title" -Value "CEO"
$Employee1
$Employee1.EmployeeID
```
Output:
```cmd
EmployeeID FirstName Title
---------- --------- -----
1001       Penny     CEO
1001
```

# Get properties of values
```ps
$Employee1=New-Object -TypeName PSCustomObject

Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "EmployeeID" -Value '1001'
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "FirstName" -Value "Penny"
Add-Member -InputObject $Employee1 -MemberType NoteProperty -Name "Title" -Value "CEO"
$Employee1
$Employee1.EmployeeIDs
```
Output:
```cmd
Name        MemberType   Definition
----        ----------   ----------
Equals      Method       bool Equals(System.Object obj)
GetHashCode Method       int GetHashCode()
GetType     Method       type GetType()
ToString    Method       string ToString()
EmployeeID  NoteProperty int EmployeeID=1001
FirstName   NoteProperty string FirstName=Penny
Title       NoteProperty string Title=CEO
```