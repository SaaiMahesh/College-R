getwd()
# various string functions
# to convert a string to uppercase
# syntax is toupper(string)
str1= "Hello"
str1
toupper(str1)    # or
str2<-toupper(str1)
str2

# to convert a string to uppercase
# syntax is tolower(string)
tolower(str1)

# to find the length or number of characters in a string
# syntax is nchar()
nchar(str1)

x=c("Hello", "Morning")
l=length(x)
l
nchar(x)

# to find a substring
# syntax is substr(x, start, stop)
substr(str1, 2,5)

# to replace a part of the string with other characters
substr(str1, 2,4)<- "ow a"
str1

str2= "Hello"
str2
toupper(str2)
substr(str2, 2,4)<- "aaa"
str1

names<- c("Sheetal M","Asritha C","Zaima W","Khushboo S")
name<-strsplit(names," ") #to split the string at empty space or at "," or : 
name

# toupper(), toupper(), nchar(), strsplit(), substr()

# to search a pattern 
# syntax grep(pattern, x,ignore.case=)
