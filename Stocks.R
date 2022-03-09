#Stocks
#Daily closing price of stocks for 2weeks
("45,43,46,48,51,46,50,47,46,45")
x=c(45,43,46,48,51,46,50,47,46,45)

#Mean
mean(x)

#Median
median(x)

#Maximum value
max(x)

#Minimum Value
min(x)

#Add some more values to x
("48,49,51,50,49,41,40,38,35,40")
x=c(x,48,49,51,50,49,41,40,38,35,40)

#Length
length(x)

#Specified Index
x[16]

#Many specific Index
x[17:20]

summary(x)

hist((x),main='Stock',xlab='Closing price',col='blue')

#Single box plot
boxplot((x),main='Boxplot')
