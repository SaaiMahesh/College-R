#CTRL+ENTER is shortcut for running current line of cursor position
getwd() #to get working directory
setwd("C:/Users/punkl/Desktop/ISBR/4th Tri/BA/R") #setting working directory, R uses only forward slash
x=5
x <-5 
y <- "hi" #setting a variable, can be done by <- or =

#https://www.tutorialspoint.com/r/r_data_types.htm - data types
#basic atomic vector data types - character, numeric real values, integers, complex, boolean(logical) etc.

j = 'hi'
class(j)
i <- TRUE
class(i)
o <- 3+2i
class(o)
t<- 2
class(t)
q<- 2L #L used to indicate number as integer
class(q)

#converting one data type to another
x1<-4.5
as.integer(x1)
as.character(x1)
as.logical(x1) 
as.numeric(x1)
x2<-4L
class(x2)
x21<-as.numeric(x2)
class(x21)

