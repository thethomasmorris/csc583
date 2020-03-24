#Lecture 7 - Exercise Answers Only
#Thomas Morris

#Q1
library(ggplot2)
class_mpg <- mpg %>% group_by(class) %>% mutate(tot = mean(cty)) %>% summarise(mean_tot = mean(tot))
View(class_mpg)
#Q2
print(class_mpg %>% arrange(desc(mean_tot)))
#Q3
print(mpg %>% group_by(class) %>% mutate(tot = mean(hwy)) %>% summarise(mean_tot = mean(tot))%>% arrange(desc(mean_tot)) %>% head(3))
print(mpg %>% group_by(manufacturer, class) %>% filter(class == "compact") %>% summarise(count = n()) %>% arrange(desc(count)))
#Q1
df_table = data_frame("fl" = c("c","d","e","p","r"), "Fuel Type" = c("cng","diesel","ethanol E85", "premium", "regular"), "Price" = c(2.35,2.38,2.11,2.76,2.22))
print(df_table)
#Q2
mpg$price_fl <- left_join(df_table, mpg, by = "fl")
View(mpg)
#Q3
mpg %>% select(model, fl, price_fl) %>% head(5)