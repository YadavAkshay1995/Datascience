setwd(choose.dir("C:/Users/Akshay Yadav/Downloads/Data Science"))
getwd()
lastfm<-read.csv("C:/Users/Akshay Yadav/Downloads/Data Science/lastfm.csv")
View(lastfm)
lastfm[1:19,]
length(lastfm$user)  ##289955 records in the file

lastfm$user <- factor(lastfm$user)  #To find distinct value
lastfm$user
str(lastfm)

library(arules) #a-rules package for association rules
##computational environment for mining and association rules and frequent item sets
#we need to manipulate the data a bit for arules split into a list of
?split
playlist<-split(x=lastfm[,"artist"],f=lastfm$user)
View(playlist)

playlist<-lapply(playlist,unique) #remove artist duplicates
playlist[1:2]

#the first two listeners (1 & 3) listen to following bands
playlist<-as(playlist,"transactions")
class(playlist)

#View this as a list of "transactions"
#Transactions is a data class defined in a rules
itemFrequency(playlist)

#list supports of 1004 bands
#number of times band is listed to on shopping trips of 15000 users.
#computer the rel freq each artist mentioned by 15000 users
itemFrequencyPlot(playlist,support=.1,cex.names=0.3)  #Cexnames=font size

musicrules<-apriori(playlist,parameter=list(support=0.01,confidence=0.5))
inspect(musicrules)
 
#let's filter by lift>5.
#Among those associations with support >0.01 and confidence >.50,
#Only show those with lift>5
inspect(subset(musicrules,subset=lift>5))
 
#Lastly order by confidence to make it easier to understand
View(inspect(sort(subset(musicrules,subset=lift > 5),by="confidence")))
