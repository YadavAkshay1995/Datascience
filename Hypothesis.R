
#A company has 500 employees, salary of whom is normally distributed #with an average of Rs.40000 and Standard deviation of Rs.6000

pnorm(30000, mean=40000, sd=6000, lower.tail=TRUE)
1-norm(30000, mean=40000,sd=6000)



1-pnorm(100, mean=53, sd=40)

install.packages("gapminder")
install.packages("dplyr")
install.packages("caret")
library(gapminder)
library(dplyr)
library(caret)

data("gapminder")
View(gapminder)
?gapminder

summary(gapminder)

#HO : There is no difference(Similar) between life expectancy of SA and Ireland is same.
#H1 : There is a difference between life expectancy of SA and Ireland
df=gapminder %>%
  select(country,lifeExp) %>%
  filter(country=="South Africa" | country=="Ireland")

View(df)
?t.test
t.test(data=df,lifeExp ~ country)

