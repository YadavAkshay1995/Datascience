airquality=read.csv("path/airquality.csv",header=TRUE, sep=",")

airquality <- datasets::airquality

#Top10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

#Columns
airquality[,c(1,2)]
df<-airquality[,-6]
airquality$Temp
summary(airquality[,1])
airquality$Wind
summary(airquality[,3])
summary(airquality$Wind)
summary(airquality)


#Plotting
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")
plot(airquality)

#Points and Lines
plot(airquality$Wind,type="l")
plot(airquality$Wind,xlab='ozone concentration',ylab='no of instances',main = 'ozone levels in the NY city',col='blue')

#Horizontal bar plot
barplot(airquality$Ozone,main='ozone concentration in air',ylab ='ozone levels',col = 'blue',horiz =F,axes =T)

#Histogram bar plot
hist(airquality$Temp)
hist(airquality$Temp,main = 'solar radiation values in air',xlab = 'solar radiation',col = 'blue')

#Single Box Plot
boxplot(airquality$Wind, main="Boxplot")
boxplot.stats(airquality$Wind)$out

#Multiple box plots
boxplot(airquality[,1:4],main='Multiple')

#Margin of the grid(mar),
#No of rows and columns(mfrow),
#Whether a border is to be included(bty)
#and position of the
#Labels(las:1 for horizontal, las=0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone, type = "l")

barplot(airquality$Ozone,main = 'Ozone concentration in air',xlab='Ozone levels',col = 'green',horiz =TRUE)

hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multiple box plots')

sd(airquality$Ozone,na.rm = T)




