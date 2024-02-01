bluegill <- read.table(file = "lab2.csv", header = TRUE, sep = ",")
bluegill
bluegill$Length
hist(bluegill$Length)
hist(bluegill$Length, main = "", xlab = "Length (mm)", ylab = " Number of individuals", col = "seagreen1")
hist(bluegill$Length, freq = FALSE, col = "gray", xlab = "Length (mm)", ylab = "Density", main = "", ylim = c(0,0.015))
curve(dnorm(x, mean(bluegill$Length), sd(bluegill$Length)), from = 50,to = 200, type = "l", lwd = 3, col = "blue", add = TRUE)
length5 <- sample(bluegill$Length, 5, replace = T)
length5
length10 = sample(bluegill$Length, 10, replace = T)
length20 = sample(bluegill$Length, 20, replace = T)
length50 = sample(bluegill$Length, 50, replace = T)
lengths <- c(bluegill$Length, length5, length10, length20, length50)
labels <- c(rep("Population", 888), rep("N = 05", 5), rep("N = 10",10), rep("N = 20", 20), rep("N = 50", 50))
boxplot(lengths ~ labels, ylab = "Length (mm)", col = "gray")
plotmeans(lengths ~ labels, xlab = "Sample Size", ylab = "Length (mm)", connect = FALSE, n.label = FALSE)
mean(bluegill$Length)
median(bluegill$Length)
sd(bluegill$Length)
se = function(x){sd(x)/sqrt(length(x))}     
se(bluegill$Length)
var(bluegill$Length)

