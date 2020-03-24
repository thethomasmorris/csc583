#Lecture 9 - Exercise Answers Only
#Thomas Morris

library(ggplot2)
#Q1
ggplot(data = mpg, aes(x=cty, y=hwy))+
  geom_point()
#Q2
ggplot(data = midwest, aes(x=poptotal, y=popasian))+
  geom_point()+
  xlim(0,500000)+
  ylim(0,10000)
#Q1 - 
library(dplyr)
df_mpg <- mpg %>% filter(class == "suv") %>% arrange(desc(cty)) %>% head(5)
ggplot(data = df_mpg, aes(x = manufacturer)) + geom_bar()
#Q2
ggplot(data = mpg, aes(x = class)) + geom_bar()
#Q1

ggplot(data = economics, aes(x = date, y = psavert)) +geom_line()
