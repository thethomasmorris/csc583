#Thomas Morris
#Homework 3
#April 23, 2020

#1
x <- seq(1,27)
dim(x) <- c(3,9)
#When you set the dimension attribute on a vector it becomes multi-dimensional
#Vector - False 
#Data Frame - True
#Matrix - True
#Array - True
#List - False
#The dim() function is used to set the dimensions, this returns or changes the dim attribute of a matrix, data frame, or an array

#2
y <- array(1:24,dim=c(3,4,2)); y
#2 matrices
#3 rows
#4 columns

#3
library(ggplot2)
mpg <- ggplot2::mpg
mpgBox <- boxplot(mpg$hwy)
summary(mpgBox$stats)
#1st Qu.:18.0  Median :24.0  Mean   :23.6  3rd Qu.:27.0  Max.   :37.0 

#4
hurricane <- read.csv("hurricanes.csv")
class(hurricane$Category)
#integer
#not a factor variable

#5
head(hurricane)
hurricane_data <- hurricane[,3:9]
hurricane_cor <- cor(hurricane_data)
round(hurricane_cor,2)

#6
library(corrplot)
corrplot(hurricane_cor, method = "number")
#0.99

#7
economics <- as.data.frame(ggplot2::economics)
cor.test(economics$pce, economics$psavert)
#negative correlation

#8
library(dplyr)
mpg <- as.data.frame(ggplot2::mpg)
mpg_hwy <- mpg %>% select(drv, hwy) %>% filter(drv %in% c("f","r"))
t.test(data = mpg_hwy, hwy ~ drv, var.equal = T)
#Yes it is statistically significant because the p value is less than .05