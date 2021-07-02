grades<-read.csv('grades.csv') #Reading file into dataframe
dim.data.frame(grades) #Finding dimensions i.e rows and columns
str(grades) #Finds structure of data
table(grades$gpa) #Example of using table function for a column of data

mean(grades$gpa) #Mean
median(grades$percent) #Median
library(modeest)
mfv(grades$quiz1) #Mode


summary(grades)