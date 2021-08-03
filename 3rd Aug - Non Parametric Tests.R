data()
#Dataset of cars
cars<-mtcars
View(cars)
#Non Parametric Test (Used when data is not normally distributed i.e skewed data)
#Wilcox Test - For 1 numeric type (Non parametric alternate for 1 sample t test)
#H0: Average is 20
#H1: Average is not 20
wilcox.test(cars$mpg,mu=20)
#Since p > 0.05, we accept null hypothesis for mu=20

#Wilcox test - For 2 numeric type (independent) (non parametric alternate for paired t test)
#H0 - Difference in mean = 0
#H1 - Difference in mean is not 0
wilcox.test(cars$disp,cars$hp)
#Since p < 0.05, we accept alternative hypothesis for difference of means not being 0

#Wilcox test - For 1 numeric and 1 categorical up-to 2 levels (Non parametric alternate for Welch 2 sample test)
#H0 - The mpg is not dependent on transmission
#H1 - The mpg is dependent on transmission
wilcox.test(cars$mpg~cars$am)
#Since p < 0.05, we accept alternative hypothesis for mpg is dependent on transmission

#Kruskal test - For 1 numeric and 1 categorical more than 2 levels (Non parametric alternate to ANOVA)
#H0: The means of mpg is not same for all gears (not practical, just for example this hypothesis is done)
#H1: The means of mpg is same for all gears
kruskal.test(cars$mpg~cars$gear)
#Since p < 0.05, we accept alternative hypothesis for mean of mpg is same for all gears

#Chi Square test - For 2 categorical variables
#H0: There is an association between engine and gears
chisq.test(cars$vs,cars$gear)
#Since p < 0.05, we accept alternative hypothesis for there is an association between engine and gears

#Proportions
prop.table(table(cars$vs,cars$gear))*100

#Shapiro-Wilk test - Used for checking normality of data
shapiro.test(cars$mpg)
#Since p > 0.05, the data is normal for mpg

#Using describe library (can be used for para or non para data - gets various stat info)
library(psych)
describe(cars)
