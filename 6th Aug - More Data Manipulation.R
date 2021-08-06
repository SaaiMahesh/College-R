data<-read.csv('cs2m.csv')
View(data)

#Reshaping
library(reshape) #Reshaping the data with functions such as rename etc.
redata<-reshape::rename(data,c(DrugR ='Reaction', Prgnt = 'Pregnant')) #Renaming DrugR to reaction and Prgnt to pregnant for multiple rename.
colnames(redata)[2]='Cholestrol' #For renaming it by column index.
View(redata)

#Arranging
library(dplyr)
ageasc<-arrange(redata,Age) #Arranges the data based on ascending order.
agedsc<-arrange(redata,desc(Age)) #Arranges the data based on descending order.

#Row and column data manipulation. #1 represents row and 2 represents columns. 
meancol<-apply(redata,2,mean) #Mean for all the columns.
meanrow<-apply(redata,1,mean) #Mean for all rows.
specificcolmean<-tapply(redata$Cholestrol,redata$Pregnant,mean) #Mean of specific columns.

rowsum<-apply(redata,1,sum) #Adding sum of each row
colsum<-apply(redata,2,sum) #Adding sum of each row

#Binding (adding on new rows/columns)
redata<-cbind(redata,rowsum) #Binding the sum of each row into a new column.

#Subsetting data
redata<-subset(redata,select=-rowsum) #Deleting columns, NOTE: don't specify select value in quotes('').
age20<-subset(redata,Age=='20')

#Filtering data
filter1<- filter(redata,Age > 25 & Cholestrol >170)

