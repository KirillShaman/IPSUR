
# open window
plot(c(0,5), c(0,6.5), type = "n", xlab="x", ylab="y")
abline(h=0, v=0, col = "gray60")
abline(a = 2.5, b = 0.5, lwd = 2)
x <- 600:3000/600
y <- dnorm(x, mean = 3, sd = 0.5)
lines(y + 1.0, x)
lines(y + 2.5, x + 0.75)
lines(y + 4.0, x + 1.5)
abline(v = c(1, 2.5, 4), lty = 2, col = "grey")
segments(1,3, 1+dnorm(0,0,0.5),3, lty = 2, col = "gray")
segments(2.5, 3.75, 2.5+dnorm(0,0,0.5), 3.75, lty = 2, col = "gray")
segments(4,4.5, 4+dnorm(0,0,0.5),4.5, lty = 2, col = "gray")

postscript(file="ps/philosophy.ps")
  # open window
  plot(c(0,5), c(0,6.5), type = "n", xlab="x", ylab="y")
  abline(h=0, v=0, col = "gray60")
  abline(a = 2.5, b = 0.5, lwd = 2)
  x <- 600:3000/600
  y <- dnorm(x, mean = 3, sd = 0.5)
  lines(y + 1.0, x)
  lines(y + 2.5, x + 0.75)
  lines(y + 4.0, x + 1.5)
  abline(v = c(1, 2.5, 4), lty = 2, col = "grey")
  segments(1,3, 1+dnorm(0,0,0.5),3, lty = 2, col = "gray")
  segments(2.5, 3.75, 2.5+dnorm(0,0,0.5), 3.75, lty = 2, col = "gray")
  segments(4,4.5, 4+dnorm(0,0,0.5),4.5, lty = 2, col = "gray")
dev.off()

svg(file="svg/philosophy.svg")
  # open window
  plot(c(0,5), c(0,6.5), type = "n", xlab="x", ylab="y")
  abline(h=0, v=0, col = "gray60")
  abline(a = 2.5, b = 0.5, lwd = 2)
  x <- 600:3000/600
  y <- dnorm(x, mean = 3, sd = 0.5)
  lines(y + 1.0, x)
  lines(y + 2.5, x + 0.75)
  lines(y + 4.0, x + 1.5)
  abline(v = c(1, 2.5, 4), lty = 2, col = "grey")
  segments(1,3, 1+dnorm(0,0,0.5),3, lty = 2, col = "gray")
  segments(2.5, 3.75, 2.5+dnorm(0,0,0.5), 3.75, lty = 2, col = "gray")
  segments(4,4.5, 4+dnorm(0,0,0.5),4.5, lty = 2, col = "gray")
dev.off()

head(cars)

qplot(speed, dist, data = cars)

postscript(file="ps/carscatter.ps")
  library(TeachingDemos)
  ci.examp()qplot(speed, dist, data = cars)
dev.off()

svg(file="svg/carscatter.svg")
  library(TeachingDemos)
  ci.examp()qplot(speed, dist, data = cars)
dev.off()

plot(dist ~ speed, data = cars)

tmpcoef <- round(as.numeric(coef(lm(dist ~ speed, cars))), 2)

cars.lm <- lm(dist ~ speed, data = cars)

coef(cars.lm)

ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 19) + 
       geom_smooth(method = lm)

postscript(file="ps/carline.ps")
  ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 19) + 
         geom_smooth(method = lm)
dev.off()

svg(file="svg/carline.svg")
  ggplot(cars, aes(x = speed, y = dist)) + geom_point(shape = 19) + 
         geom_smooth(method = lm)
dev.off()

cars[5, ]

fitted(cars.lm)[1:5]

predict(cars.lm, newdata = data.frame(speed = c(6, 8, 21)))

residuals(cars.lm)[1:5]

tmpred <- round(as.numeric(predict(cars.lm, newdata = data.frame(speed = 8))), 2)
tmps <- round(summary(cars.lm)$sigma, 2)

carsumry <- summary(cars.lm)
carsumry$sigma

A <- matrix(as.numeric(round(carsumry$coef, 3)), nrow = 2)
B <- round(confint(cars.lm), 3)

summary(cars.lm)

confint(cars.lm)

new <- data.frame(speed = c(5, 6, 21))

predict(cars.lm, newdata = new, interval = "confidence")

carsCI <- round(predict(cars.lm, newdata = new, interval = "confidence"), 2)

predict(cars.lm, newdata = new, interval = "prediction")

carsPI <- round(predict(cars.lm, newdata = new, interval = "prediction"), 2)

library(HH)
ci.plot(cars.lm)

library(HH)
print(ci.plot(cars.lm))

postscript(file="ps/carscipi.ps")
  library(HH)
  print(ci.plot(cars.lm))
dev.off()

svg(file="svg/carscipi.svg")
  library(HH)
  print(ci.plot(cars.lm))
dev.off()

summary(cars.lm)

anova(cars.lm)

carsumry$r.squared

sqrt(carsumry$r.squared)

anova(cars.lm)

tmpf <- round(as.numeric(carsumry$fstatistic[1]), 2)

plot(cars.lm, which = 2)

postscript(file="ps/Normal-q-q-plot-cars.ps")
  plot(cars.lm, which = 2)
dev.off()

svg(file="svg/Normal-q-q-plot-cars.svg")
  plot(cars.lm, which = 2)
dev.off()

shapiro.test(residuals(cars.lm))

plot(cars.lm, which = 3)

postscript(file="ps/std-resids-fitted-cars.ps")
  plot(cars.lm, which = 3)
dev.off()

svg(file="svg/std-resids-fitted-cars.svg")
  plot(cars.lm, which = 3)
dev.off()

library(lmtest)
bptest(cars.lm)

plot(cars.lm, which = 1)

postscript(file="ps/resids-fitted-cars.ps")
  plot(cars.lm, which = 1)
dev.off()

svg(file="svg/resids-fitted-cars.svg")
  plot(cars.lm, which = 1)
dev.off()

library(lmtest)
dwtest(cars.lm, alternative = "two.sided")

sres <- rstandard(cars.lm)
sres[1:5]

sres[which(abs(sres) > 2)]

sdelres <- rstudent(cars.lm)
sdelres[1:5]

t0.005 <- qt(0.005, df = 47, lower.tail = FALSE)
sdelres[which(abs(sdelres) > t0.005)]

leverage <- hatvalues(cars.lm)
leverage[which(leverage > 4/50)]

dfb <- dfbetas(cars.lm)
head(dfb)

dff <- dffits(cars.lm)
dff[1:5]

cooksD <- cooks.distance(cars.lm)
cooksD[1:4]

plot(cars.lm, which = 4)

postscript(file="ps/Cooks-distance-cars.ps")
  plot(cars.lm, which = 4)
dev.off()

svg(file="svg/Cooks-distance-cars.svg")
  plot(cars.lm, which = 4)
dev.off()

F0.50 <- qf(0.5, df1 = 2, df2 = 48)
any(cooksD > F0.50)

influence.measures(cars.lm)

par(mfrow = c(2,2))
plot(cars.lm)
par(mfrow = c(1,1))

par(mfrow = c(2,2))
plot(cars.lm)
par(mfrow = c(1,1))

postscript(file="ps/Diagnostic-plots-cars.ps")
  par(mfrow = c(2,2))
  plot(cars.lm)
  par(mfrow = c(1,1))
dev.off()

svg(file="svg/Diagnostic-plots-cars.svg")
  par(mfrow = c(2,2))
  plot(cars.lm)
  par(mfrow = c(1,1))
dev.off()

plot(cars.lm, which = 5)   # std'd resids vs lev plot
identify(leverage, sres, n = 4)   # identify 4 points