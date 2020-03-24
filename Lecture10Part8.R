#Lecture 10 - Exercise Answers Only
#Thomas Morris

#Q1
library(ggplot2)
df_mpg <- mpg %>% filter(class == "compact" | class == "subcompact" | class == "suv")
ggplot(data = df_mpg, aes(x = class, y = cty)) + geom_boxplot()
