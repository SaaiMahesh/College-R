#If skewness of the data lies between -1 and +1 then it is normal data, else it is skewed.
#It is negatively skewed if the data leans towards left and positively skewed if vice versa.
#Kurtosis shows the peak of standard deviation between data points and mean.
#(platykurtic - high peak,mesokurtic- mid peak, lepotokurtic- low or flat peak)

student<-read.csv("students_performance.csv")
str(student)
dim(student)
table(student$Gender) #Frequency count of dataset variables/categories etc. For example, for gender.

#Visualization of numeric data we use histogram, for categorical we use bar chart.
hist(student$Read)

#Checking if data is normal i.e checking kurtosis and skewness.
library(e1071)
library(dplyr)
skewness(student$Read) #Since the value is 0.19 and it is between -1 and +1, it is not skewed for 'Read'.

#To see graphs together use par(mfrow=). In this case we use for displaying both genders against 'Read'.
par(mfrow=c(2,1)) #Viewing as 2 rows and 1 column.
hist(student$Read[student$Gender==1])
hist(student$Read[student$Gender==0])

#Hypothesis testing
#One sample t-test - The one sample t test compares the mean of your sample data to a known value. 
#It is used for comparing the actual mean to the hypothesized mean for showing significant difference in the mean.
#For ex:
#H0: Mean of math is 70
#H1: Mean of math is not 70
#IMP: IF P VALUE IS <0.05, REJECT NULL HYPOTHESIS. ELSE ACCEPT.

t.test(student$Math, mu = 70) #mu is user defined to just check whatever values.
#Since p < 0.05, we accept alternate hypothesis.

#Welsh two sample test, for one numerical and one categorical variable up-to 2 levels
t.test(student$Read,student$School)
#Since p < 0.05, we accept alternative hypothesis(change in mean between both variables) and reject null hypothesis(no change in mean between both variables)

#Boxplot
boxplot(student$Read~student$School) # ~ is used for "as function of" i.e y~x is y is function of x, here, read becomes function of school to make it comparable which otherwise wont give a good plot

