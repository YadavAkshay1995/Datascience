install.packages("arules")
library(arules)


##Example1##
setwd(choose.dir("C:/Users/Akshay Yadav/Downloads/Data Science"))
getwd()

Groceries_item = read.transactions("Demo 1_Perform Association Using the Apriori Algorithm .csv",
                                   sep=",")

inspect(Groceries_item)  #wrong
inspect(head(Groceries_item,20))


?apriori
new_groc=apriori(Groceries_item,parameter=list(support=0.01,confidence=0.5))
summary(new_groc)
inspect(new_groc)

Groc_1<-sort (new_groc,by="lift",decreasing=TRUE)
inspect(Groc_1)

