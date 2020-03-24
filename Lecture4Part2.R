#Lecture 4 - Exercise Answers only
#Thomas Morris
library(ggplot2)
#Q1
df_mpg  <- as.data.frame(ggplot2::mpg)
#Q2
head(df_mpg$manufacturer, 20)
#Q3
tail(df_mpg$manufacturer, 10)
#Q4
dim(mpg)
#Q5
str(df_mpg$displ)
#NUM type
#Q6
min(df_mpg$year)
mean(df_mpg$cyl)
install.packages("dplyr")
library(dplyr)
#Q1
mpg_copy <- as.data.frame(ggplot2::mpg)
#Q2
mpg_copy <- rename(mpg_copy, city = cty)
mpg_copy <- rename(mpg_copy, highway = hwy)
#Q3
print(head(mpg_copy))
#Q4
mpg_copy$total<- (mpg_copy$city + mpg_copy$highway)
mpg_copy$mean <- (mpg_copy$city + mpg_copy$highway)/2
print(mpg_copy$total)
print(mpg_copy$mean)
#Q1
df_midw <- as.data.frame(ggplot2::midwest)
df_midw <- rename(df_midw, total = poptotal)
df_midw <- rename(df_midw, asian = popasian)
head(df_midw)
tail(df_midw)
View(df_midw)
dim(df_midw)
str(df_midw)
summary(df_midw)
#Q2
ratio <- (df_midw$asian/df_midw$total)
hist(ratio)
#Q3
meanAsian <- mean(df_midw$asian)
df_midw$group <- ifelse(df_midw$asian>=meanAsian, "large", "small")
table(df_midw$group)
qplot(df_midw$group)
