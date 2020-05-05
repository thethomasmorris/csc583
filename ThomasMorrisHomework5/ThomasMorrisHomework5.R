#Thomas Morris
#Homework 5
#5/4/2020

#Q1
df_usedcar <- read.csv("usedcars.csv")

#Q2
str(df_usedcar)

#Q3
library(dplyr)
df_pricemile <- df_usedcar %>% select(price, mileage) %>% summary(df_pricemile)
print(df_pricemile)

#Q4
median(df_usedcar$price) #13591.5

#Q5
quantile(df_usedcar$price, c(.10,.90))
#10% 8431.9
#90% 15999.7

#Q6
boxplot(df_usedcar$price, main="Used Car Price Box Plot", ylab = "Price in US Dollars")
boxplot(df_usedcar$mileage, main="Used Car Mileage Box Plot", ylab = "Mileage")

#Q7
hist(df_usedcar$price, main="Used Car Price Histogram", xlab = "Price in US Dollars")
hist(df_usedcar$mileage, main="Used Car Mileage Histogram", xlab = "Mileage")

#Q8
var(df_usedcar$price) #9749892
var(df_usedcar$mileage) #728033954
sd(df_usedcar$price) #3122.482
sd(df_usedcar$mileage) #26982.1

#9
table(df_usedcar$year)
table(df_usedcar$model)
table(df_usedcar$color)

#10
df_usedcar$conservative <- df_usedcar$color %in% c("Black", "Gray", "Silver", "White")
table(df_usedcar$conservative)
