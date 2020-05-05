#Thomas Morris
#Homework 4
#5/4/2020

library(dplyr)

#Q1
df_hw4 <- read.csv("HW4-data.csv")
names(df_hw4)
#The names are "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day"

#Q2
print(head(df_hw4, 3))

#Q3
nrow(df_hw4) #Q1: 153 Rows
nrow(head(df_hw4, 3)) #Q2: 3 rows

#Q4
df_hw4$Ozone[11] #7

#Q5
df_miss <- is.na(df_hw4$Ozone)
sum(df_miss) #37 missing values

#Q6
df_nomiss <- df_hw4 %>% filter(!is.na(df_hw4$Ozone))
mean_o <- round(mean(df_nomiss$Ozone), 3)
print(mean_o) #42.129

#Q7
sub <- subset(df_hw4, Ozone < 25 & Temp > 80)

#Q8
mean(sub$Solar.R) #106.2

#Q9
subM <- subset(df_hw4, Month == 8)
mean(subM$Temp) #83.96774

#Q10
maxMay <- subset(df_hw4, Month == 5)
max(na.omit(maxMay$Ozone)) #115