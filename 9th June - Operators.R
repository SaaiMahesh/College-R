#Operators in R : +, -, *, / , %%(modulus -gives remainder), %/% (integer division)

x =5
y=10

sumof=x+y
subtract=x-y
multi=x*y
division=x/y
intdev= x%/%y
modulus=x%%y

#Taking input from user
a=readline(prompt="Enter any number: ")
a=as.numeric(a) #Converts to numeric since readline makes it in character form always

b=readline(prompt="Enter any number: ")
b=as.numeric(b)

sumofaandb=a+b
sumofaandb

#Relationship operators in R : < , > , >= , <= , != , == . All these output in TRUE or FALSE.
a > x
a < x
a != x
a == x
a >= x
a <= x

#Logical operators in R: AND(&), NOT(!), OR(|)
#AND op gives o/p true when all i/ps are true else it gives false
#OR op gives o/p true when atleast one i/p is true
#NOT op used for single value or condition (used for negating)

(a>x)&(b<x)

