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
$myArray.IsFixedSize
```

Outputs:
```cmd
3
3
Test1
Test2
Test3
True
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

# Add and remove items from the arrays
1- Add items
```ps
$myArray = $myArray + "Test4"
$myArray[3]
$myArray.Count

$myArray += "Test5"
$myArray[4]
$myArray.Count
```

Outputs:
```cmd
Test4
4
Test5
5
```

2- Substract items from array
```ps
$myArray=@("Test1","Test2","Test3")
$myArray=$myArray -ne "Test2"
$myArray
```
Output:
```cmd
Test1
Test3
```

# Array lists

```ps
$myList1=[System.Collections.ArrayList]@()
$myList=New-Object -TypeName System.Collections.ArrayList => recommended

$myList1.GetType()
$myList.GetType()
```

Output:
```cmd
IsPublic IsSerial Name                                     BaseT 
                                                           ype   
-------- -------- ----                                     ----- 
True     True     ArrayList                                Syst… 
True     True     ArrayList                                Syst… 
```

# Array properties and functions
```ps
$myList=New-Object -TypeName System.Collections.ArrayList

$myList.IsFixedSize
$myList.Add("Test1")
$myList.Add("Test2")
$myList
```

Output:
```cmd
False
0 => array index
1
Test1
Test2
```

- Add array of items 
```ps
$myList=New-Object -TypeName System.Collections.ArrayList

$myList.AddRange(@("Test1","Test2","Test3","Test4"))
$myList.Count
$myList
```
Output:
```cmd
4
Test1
Test2
Test3
Test4
```

# Array add or remove items
```ps
$myList=New-Object -TypeName System.Collections.ArrayList

$myList.AddRange(@("Test1","Test2","Test3","Test4"))
$myList.Add("Test5")
$myList[4]

$myList.Remove("Test3")
$myList
```
Output:
```cmd
4
Test5

Test1
Test2
Test4
Test5
```
