#Lecture 8 - Exercise Answers Only
#Thomas Morris

library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65,124,131,153,212),"hwy"] <- NA
#Q1
table(is.na(mpg$drv)) #0 
table(is.na(mpg$hwy)) #5
#Q2
library(dplyr)
hwy_filtered <- mpg %>% filter(!is.na(mpg$hwy))
hwy_mean <- mean(hwy_filtered$hwy)
top_filtered <- hwy_filtered %>% filter(hwy_filtered$hwy >= hwy_mean)
print(top_filtered)
#Q1
c("4","f","r") %in% mpg$drv
mpg$drv <- ifelse(mpg$drv == "4" | mpg$drv == "f" | mpg$drv == "r", NA)
c("4","f","r") %in% mpg$drv
#Q2
boxplot(mpg$cty)$stats
mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)
boxplot(mpg$cty)
#Q3
print(mpg %>% group_by(mpg$drv) %>% filter(!is.na(mpg$cty) | !is.na(mpg$drv)) %>% summarise(mean_cty = mean(mpg$cty, na.rm = T)))
