#Vectors are most commonly used to store data. They can only contain the same data type. Can store order or unordered.
#Vectors are 1-dimensional!
a <- c(1,2,3,4)
a
a <- c(1,2,3,TRUE)
a
a <- c(1,2,3,FALSE)
a
a <-c(1,2,3,"h")
a #NOTE!! The vector class changes based on hierarchy of elements in priority - alphabet, numeric , logical(true/false)
  
#Sequence numbers can be written as, x:y is only ordered.
b <- 1:10

#Length function
len <- length(a)
len

#To find position, use []
a[1]

#Exercises:#Find the following values from 4th to 7th position, values in 5,7,3 and 15th position
#Find the last element
#Find from the first till last but one element (i.e second last element)
E <- c(3,4,7,10,11,15,78,99,110,23,27,37,222,902,6,567)

#Ans1. 
a <-E[4:7]
b <- E[c(5,7,3,15)]
x <- c(a,b)
x

#Ans2.
length(E)
E[15]
#alternative -  E[length(E)-1]

#Ans3.
E[1:15]
#alternative -  E[1:length(E)-1]

#To find even numbers in given 'E' vector E <- c(3,4,7,10,11,15,78,99,110,23,27,37,222,902,6,567)
E[which(E%%2==0)]

#To find odd numbers in given 'E' vector E <- c(3,4,7,10,11,15,78,99,110,23,27,37,222,902,6,567)
E[which(!(E%%2==0))]

#Question: Find even numbers which are greater than 25 in 'E'

E[which((E%%2==0) & (E>25))]

#alternative - for (i in E){ if((i%%2==0)&&(i>25)){ print(i)}}


#Question: Find all even numbers or numbers greater than 100 in 'E'

E[which((E%%2==0) | (E>100))]

# alternative - for (i in E){ if((i%%2 == 0) || (i>100)){ print(i)}}


#Creating sequences: syntax - seq(starting value,final value,increment or decrement)
a <- seq(10,50,4) #Increment
a
b <- seq(100,50,-5) #Decrement
b

#Incrementing by a number till a certain limit
c <- seq(5,by=10,length=10)
c

#Decrementing by a number till a certain limit
d <- seq(50,by=-5,length=10)
d


#Union of vectors - Can be used to merge without repetitions AKA full merge
a=c(1,2,3,4,5,6) #alternative - a=[1:6]
b=c(6,7,8,9,10) #alternative - b=[6:10]
c=union(a,b)
c

#Intersection of vectors  - Can be used to get the repetition value AKA inner merge
o = intersect(a,b)
o

#Set difference - Can be used to get values which doesn't exist in the RHS
setdiff(a,b)

#Rep function (Dont  get confused with repeat loop function) - To repeat data - Syntax: a(object,number of times)
rep(1,2)
rep(1:6,2)
rep(1:4,3:6) #Example used for sequence repeat that is: 1 repeats 3 times, 2 repeats 4 times etc..
rep(1:4,c(2,3,4,5)) #Example used for sequence repeat using vector that is: 1 repeats 2 times, 2 repeats 3 times etc..


#Checking if element exists in the vector - either use is.element() or %in%
d = 1 %in% a #Checking individual element in vector object or use is.element()
d
c = 1 %in%b #Checking individual element in vector object or use is.element()
c
a %in% c #Checking vector object in vector object (finding a entire vector inside another vector)
is.element(a,c) #Checking vector object in vector object

#Generate random numbers - Use the runif() fn. IMP- U can use round() fn to make it whole number.
runif(10)#NOTE : By default it generates numbers b/w 0 and 1
runif(10,min=0,max=10)
round(runif(10,min=5,max=15))

set.seed(10) #set.seed() can be used to fix the runif()'s data, where the number in the () can be anything(aka identifier)
round(runif(10)*100) #Now if the same function is run,cuz of set.seed() it will give same random data again,we are giving 100 to make it 2 digit.

#Unique function will remove duplicate elements
a <- c(1,2,2,3,5)
unique(a)

#NA manipulation using is.na() and na.rm attribute
ok <- c(1,2,4,NA,22,NA) 
is.na(ok) #Output TRUE means there is a NA, FALSE means there is no NA
ok[is.na(ok)] #Shows output of "NA" corresponding to number of NAs
mean(ok) #If u want to find mean with a element having NA, it wont display
mean(ok,na.rm=TRUE) #Using na.rm=TRUE, it removes NA and finds the mean

