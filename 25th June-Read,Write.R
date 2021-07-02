#Reading and writing files
#Install package for reading/writing file
install.packages('csvread')

#Implementing the library/package for the script
library('csvread')

#To write file into directory,also removing row names that is not required that got generated when we created our own data.
write.csv(std_data,'student.csv',row.names=FALSE)

#Reading csv file
df=read.csv('student.csv')

#To get specific column(s)
df[2] #To get one column
df[c(2,3)] #To get multiple column

#To get specific row
df[2,] #[row,column] is the format
df[2,c(2,3)]
df[,3]

