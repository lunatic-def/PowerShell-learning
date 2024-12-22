Declare a variable

# 1- string ("" OR '')
```ps
$myVariable="Anh Programmer"
```
Get properties of a variable

```ps
$myVariable.Length
$myVariable.GetType() # Get type of variable
```
outputs:
```cmd
Anh Programmer
14

IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     True     String                                   System.Object
```

# 2- Number 
```ps
$myVariable=123
$myVariable.GetType() # Get type of variable
```

outputs:
```cmd
IsPublic IsSerial Name                                     BaseType       
-------- -------- ----                                     --------       
True     True     Int32                                    System.ValueT… 

```
# 3- boolean

```ps
$myStatement=$true
$myStatement.GetType()
```

Outputs:
```cmd
IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     True     Boolean                                  System.ValueT…
```

```ps
($value1 -eq $value5)
($value1 -eq $value5).GetType()
```

Outputs:
```cmd
False

IsPublic IsSerial Name                                     BaseType       
-------- -------- ----                                     --------       
True     True     Boolean                                  System.ValueT… 

```


# 4- Pre-declared value
```ps
[int]$myValue = 1.2
$myValue

[double]$myValue2 = 3
$myValue2.GetType()
```
Outputs:
```cmd
1

IsPublic IsSerial Name                                     BaseType       
-------- -------- ----                                     --------       
True     True     Double                                   System.ValueT… 

```

# 5 - Get function into Variable

```ps
$today = Get-Date
$today
``