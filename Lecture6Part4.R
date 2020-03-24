#Lecture 6 - Exercise Answers Only
#Thomas Morris

#Q1
library(ggplot2)
df_mpg <- as.data.frame(ggplot2::mpg)
newdata <- df_mpg %>% select(class,cty)
print(newdata)
#Q2
newdata <- newdata %>% filter(class == "suv" | class == "compact")
avg <- mean(newdata$cty)
print(avg)
#Q3
View(mpg)
df_mpg <- as.data.frame(ggplot2::mpg)
top_hwy <- df_mpg %>% arrange(desc(hwy)) %>% filter(manufacturer == "audi") %>% select(model, hwy) %>% head(5)
print(top_hwy)
#Q1
mpg_new <- as.data.frame(ggplot2::mpg)
mpg_new <- mpg_new %>% mutate(total = cty + hwy)
#Q2
mpg_new <- mpg_new %>% mutate(average = total /2)
#Q3
print(mpg_new %>% arrange(desc(average)) %>% head(3))
#4
df_mpg <- df_mpg %>% mutate(total = cty + hwy, average = (cty+hwy)/2) %>% arrange(desc(average)) %>% head(3)
