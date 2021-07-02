#Factors

#Converting into factor (if you wish to remove repetitions)
a<-c('a','b','a','a','a','b')
a
x<-factor(a)
x #By default it will output the levels of the data in alphabetical order
class(x)

#Nominal, ordinal, continuous
performance<-c('VG','VG','P','VP','Avg','VP','Avg','P')
perf<-factor(performance,order=TRUE,levels=c('VG','G','Avg','P','VP')) #Making the factor to show in order of a specific order
perf
levels(perf) #Shows the levels from the factor
nlevels(perf) #Number of levels from the factor

#Data frame - It is 2D and has rows and columns. Can store multiple data types.
#Function is create data frame is data.frame()

mydata<-data.frame('col1','col2')
mydata

#Create a student database consisting of stdid,stdname,age,gender,year,result
stdid<-c(101,102,103,104)
stdname<-c('AAA','BBB','CCC','DDD')
gender<-factor(c('M','F','M','M')) #Using factor to make it non repeated levels
year<-c('I','II','III','IV')
result<-factor(c('Pass','Pass','Fail','Pass')) #Using factor to make it non repeated levels
std_data<-data.frame(stdid,stdname,gender,year,result)
std_data
#Random note: auto complete suggestions shows, if u see pink color it is variable, blue is function and table sign is table.

View(std_data) #To show data table in new tab, use uppercase 'V' for view.

#Viewing specific columns
std_data[1:2]
std_data[c(1,4)]

#To extract a column, use $ symbol
std_data$gender

#Table command is used for categorical data(for the count of a category)for the count
table(std_data$gender)

#To get all column names of the database
colnames(std_data)

#To get summary of database
summary(std_data)

#To get structure of database
str(std_data)

#To change column name of existing column
colnames(std_data)[3]='Sex'
colnames(std_data)


