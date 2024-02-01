install.packages("nortest")
install.packages("gplots")



library(nortest)
library(gplots)

stickleback  <- read.table(file = "stickleback.csv", header = TRUE, sep = ",") #Import
stickleback #call tabel


hist(stickleback$length[stickleback$source == "Lake"], freq = F, main = "", xlab = "Length (mm)", ylab = "Density", col = "blue",ylim=c(0,0.15)) #make histogram
curve(dnorm(x, mean(stickleback$length[stickleback$source == "Lake"]), sd(stickleback$length[stickleback$source == "Lake"])), from = 20, to = 50, type = "l", lwd = 3, col = "black", add = T) # add curve
qqnorm(stickleback$length[stickleback$source == "Lake"], pch = 2, col = "red", main = "") # qq plot
qqline(stickleback$length[stickleback$source == "Lake"]) # theoretical line
ad.test(stickleback$length[stickleback$source == "Lake"]) #Anderson dairling test
shapiro.test(stickleback$length[stickleback$source == "Lake"]) # Shapiro-wilk normality test
t.test(stickleback$length[stickleback$source == "Lake"])

hist(stickleback$length[stickleback$source == "Stream"], freq = F, main = "", xlab = "Length (mm)", ylab = "Density", col = "green",ylim=c(0,0.15)) #make histogram
curve(dnorm(x, mean(stickleback$length[stickleback$source == "Stream"]), sd(stickleback$length[stickleback$source == "Stream"])), from = 20, to = 50, type = "l", lwd = 3, col = "black", add = T) # add curve
qqnorm(stickleback$length[stickleback$source == "Stream"], pch = 2, col = "red", main = "") # qq plot
qqline(stickleback$length[stickleback$source == "Stream"]) # theoretical line
ad.test(stickleback$length[stickleback$source == "Stream"]) #Anderson dairling test
shapiro.test(stickleback$length[stickleback$source == "Stream"]) # Shapiro-wilk normality test
t.test(stickleback$length[stickleback$source == "Stream"])

hist(stickleback$length, freq = F, main = "", xlab = "Length (mm)", ylab = "Density", col = "orange",ylim=c(0,0.15)) #make histogram
curve(dnorm(x, mean(stickleback$length), sd(stickleback$length)), from = 20, to = 50, type = "l", lwd = 3, col = "black", add = T) # add curve
qqnorm(stickleback$length, pch = 2, col = "red", main = "") # qq plot
qqline(stickleback$length) # theoretical line
ad.test(stickleback$length) #Anderson dairling test
shapiro.test(stickleback$length) # Shapiro-wilk normality test
t.test(stickleback$length)


plotmeans(stickleback$length~ stickleback$source, connect=F,
          n.label=F, ci.label=T, xlab = "Source", ylab = "Length")



mammal  <- read.table(file = "Mammal body and brain mass.csv", header = TRUE, sep = ",") #Import

plot(mammal$brain.mass ~ mammal$body.mass, pch = 17,xlab="Body Mass", ylab="Brain Mass", col= "blue")

ad.test(mammal$brain.mass) #Anderson darling test
ad.test(mammal$body.mass) #Anderson darling test


log.brain.mass <- log(mammal$brain.mass, 10)
log.body.mass <- log(mammal$body.mass, 10)

plot(log.brain.mass ~ log.body.mass, pch = 17,xlab="Body Mass", ylab="Brain Mass", col= "brown") #Adjust the axis titles, title, and color before saving.

ad.test(log.brain.mass)
ad.test(log.body.mass)