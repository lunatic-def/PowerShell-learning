# Array
```ps
$myArray=@()
$myArray.GetType()
```
Outputs:
```cmd
IsPublic IsSerial Name                                     BaseT
                                                           ype
-------- -------- ----                                     -----
True     True     Object[]                                 Syst…

```

# Array properties

```ps
$myArray=@("Test1","Test2","Test3")
$myArray.Count
$myArray.Length
$myArray
```

Outputs:
```cmd
3
3
Test1
Test2
Test3
```
# Array index
```ps
$myArray=@("Test1","Test2","Test3")

$myArray[0]
```
Outputs:
```cmd
Test1
```