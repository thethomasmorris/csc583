#Lecture 3 - Exercise Answers only
#Thomas Morris

#Q1
test <- c(80,60,70,50,90)
#Q2
mean(test)
#Q3
testAvg <- mean(test)
print(testAvg)
#Q4
library(ggplot2)
qplot(data = mpg, x = manufacturer, geom = "bar")
#Q1
Fruit <- c("Apple","Strawberry","Watermelon")
Price <- c(1800,1500,3000)
Volume <- c(24,38,13)
df_table <- data.frame(Fruit,Price,Volume)
print(df_table)
#Q2
avgPrice <- mean(df_table$Price)
print(avgPrice)
avgVolume <- mean(df_table$Volume)
print(avgVolume)
