#Lecture 5 - Exercise Answers only
#Thomas Morris
library(ggplot2)
df_mpg <- as.data.frame(ggplot2:mpg)
#Q1
df_mpg %>% filter(df_mpg$hwy >= mean(df_mpg$hwy) & (df_mpg$displ > 5 | df_mpg$displ < 4))
#Q2
avg <- df_mpg %>% filter(df_mpg$manufacturer == "audi" | df_mpg$manufacturer == "toyota")     
mean(avg$hwy)
#Q3
avg <- df_mpg %>% filter(df_mpg$manufacturer == "chevrolet" | df_mpg$manufacturer == "ford" | df_mpg$manufacturer == "honda")     
mean(avg$hwy)
