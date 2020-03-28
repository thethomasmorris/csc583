#Thomas Morris
#CSC 583 - Homework 2

#1
x <- c(1,2,3,4,5,NA,NA)
is.na(x)
table(is.na(x))


#2
library(dplyr)
remove_na <- na.omit(x)
is.na(remove_na)
table(is.na(remove_na))

#3
sum(na.omit(x))
mean(na.omit(x))

#4
library(ggplot2)
install.packages('gcookbook')
library(gcookbook)
ggplot(data = heightweight, aes(x = ageYear, y = heightIn)) + geom_point()
#ANSWER - YES

#5
ggplot(data = heightweight, aes(x = ageYear, y = heightIn)) + geom_point() + xlim(13,17) + ylim(55,65)

#6
install.packages("foreign")
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare <- read.spss(file = "Koweps_hpc10_2015_beta1.sav", to.data.frame = T)
welfare <- raw_welfare
welfare <- rename(welfare, 
                  sex = h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  code_region = h10_reg7)
welfare$age <- 2015 - welfare$birth +1
welfare <- welfare %>% mutate(ageg = ifelse(age < 30, "young", ifelse(age <= 59, "middle", "old")))
welfare$sex <- ifelse(welfare$sex == 1, "male","female")
#6A
ageg_income <- welfare %>% filter(!is.na(income)) %>% group_by(sex,ageg) %>% summarise(mean_income = mean(income))
print(ageg_income)
#6B
ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) + geom_col(aes(fill = sex))
#6C
ggplot(data = ageg_income, aes(x = ageg, y = mean_income, fill = sex)) + geom_bar(stat='identity', position='dodge')
#6D
age_income <- welfare %>% filter(!is.na(income)) %>% group_by(sex,age) %>% summarise(mean_income = mean(income))
print(age_income)
#6E
ggplot(data = age_income, aes(x = age, y = mean_income, fill = sex)) + geom_line(aes(color = sex))
