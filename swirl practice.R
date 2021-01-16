1
2
2
3

head(pollution)
dim(pollution)
summary(pollution$pm25)
3
4
quantile(ppm)
2
3
boxplot(ppm, col = "blue")
3
abline(h=12)
3
hist(ppm, col = "green")
1
1
rug(ppm)
View(low)
low
high
hist(ppm, col = "green", breaks = 100)
3
rug(ppm)
hist(ppm, col = "green")
abline(v=12, lwd = 2)
abline(v= median(ppm),col="magenta", lwd = 4)
names(pollution)
reg <- table(pollution$region)
reg
barplot(reg, col = "wheat", main= reg)
barplot(reg, col = "wheat", main = "Number of Counties in Each Region")
2

boxplot(pm25~region, data = pollution, col="red")
par(mfrow=c(2,1),mar=c(4,4,2,1))
east <- subset(pollution, region == "east")
head(east)
hist(east$pm25, col = "green")
hist(subset(pollution, region == "west")$pm25, col = "green")
plot(pollution,latitude~pm25)
with(pollution, plot(latitude~pm25))
with(pollution, plot(latitude, pm25))
abline(h=12, lwd =2, lty =2)
plot(pollution$latitude, pollution$pm25, col= pollution$region)
plot(pollution$latitude, ppm, col = pollution$region)
1
1
abline(h =12, lwd = 2, lty = 2)
par(mfrowc(1,2), mar = C(5,4,2,1))
par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
west <- subset(pollution, region =="west")
plot(west$latitude , west$pm25 , main = "West")
plot(east$latitude , east$pm25 , main = "East")
a
3
1
3
1
berj.d1@gmail.com
hn2pEIplyoSbrb6c
1
3
?devices
?Devices
faithful
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data")
dev.cur()
pdf(file="myplot.pdf")
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data")
dev.cur()
dev.off()
dev.cur()

dev.set(<integer>)
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data")
dev.copy(png, file = "geyserplot.png")
dev.off()
2
berj.d1@gmail.com
X1ann0P4QsQLNcMa
1
4
4
head(cars)
with(cars, plot(speed,dist))
text(mean(cars$speed), max(cars$dist), "SWIRL rules!")
head(state)
table(state$region)

xyplot(Life.Exp ~ Income | region, data = state, layout = c(4,1))
3
xyplot(Life.Exp ~ Income | region, data = state, layout = c(2,2))
head(mpg)
dim(mpg)
table(mpg$model)
qplot(displ, hwy, data = mpg)
2
fjjYg7YkyLjv0rUT
1
berj.d1@gmail.com
fjjYg7YkyLjv0rUT
1
5
1
head(airquality)
range(airquality$Ozone,na.rm = TRUE)
hist(airquality$Ozone)
2
table(airquality$Month)
boxplot(Ozone~Month, airquality, xlab = "Month", ylab = "Ozone (ppb)", col.asxis= "blue", col.lab = "red")
boxplot(Ozone~Month, airquality, xlab="Month", ylab="Ozone (ppb)",col.axis="blue",col.lab="red", main="Ozone and Wind in New York City")
title(main="Ozone and Wind in New York City")
with(airquality, plot(Wind, Ozone))
title(main = "Ozone and Wind in New York City")
length(par())
names(par())
par()$pin
3
2
par("fg")
3
2
3
par("pch")
3
par("lty")
plot(airquality$Wind, airquality$Ozone, type = "n")
title(main = "Wind and Ozone in NYC" )
may <- subset(airquality, Month == "5")
may <- subset(airquality, Month==5)
points(may$Wind, may$Ozone, col = "blue", pch = 17)
notmay <- subset(airquality, Month != 5)
points(notmay$Wind, notmay$Ozone, col = "red", pch = 8)
legend("topright", pch = c(17,8), col = c("blue", "red"), legend = c("May", "Other Months")
)
abline(v=median(airquality$Wind), lty=2)
abline(v=median(airquality$Wind),lty=2,lwd=2)
par(mrfow=c(1,2))
par(mfrow=c(1,2))
plot(airquality$Wind, airquality$Ozone, main = "Ozone and Wind" )
plot(airquality$Ozone, airquality$Solar.R, main = "Ozone and Solar" )
plot(airquality$Ozone, airquality$Solar.R, main = "Ozone and Solar Radiation")
par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
plot(airquality$Wind ,airquality$Ozone, main ="Ozone and Wind")
plot(airquality$Solar.R ,airquality$Ozone, main ="Ozone and Solar Radiation")
plot(airquality$Temp ,airquality$Ozone, main ="Ozone and Temperature")
mtext("Ozone and Weather in New York City", outer = TRUE)
2
berj.d1@gmail.com
6l3lOCC6Fspvgmng
getwd()
