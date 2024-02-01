install.packages("gplots")
library(gplots)
library(nortest)

iris <- read.table("iris.csv", header=T, sep=",")
ad.test(iris$sepal.width[iris$species == "setosa"])
ad.test(iris$sepal.width[iris$species == "virginica"])
# If the p is high, let the null fly. If the p is low, let the null go.
t.test(iris$sepal.width ~ iris$species, alternative =
         "two.sided", paired = F)
#####################
plotmeans(iris$sepal.width ~ iris$species, xlab = "Species", ylab = "width (cm)", connect = FALSE, n.label = FALSE)

chick <- read.table("chick.csv", header=T, sep=",")

ad.test(chick$chick.weight[chick$feed.type == "linseed"])
ad.test(chick$chick.weight[chick$feed.type == "sunflower"])

wilcox.test(chick$chick.weight ~ chick$feed.type, alternative =
              "two.sided", paired = F)                             

boxplot(chick$chick.weight ~ chick$feed.type, data=chick,xlab = "Chick Feed Type", ylab = "Chick Weight (grams)")
#######################
lizard <- read.table("lizard.csv", header=T, sep=",")


ad.test(log(lizard$rbc.count[lizard$status == "infected"]))
ad.test(log(lizard$rbc.count[lizard$status == "noninfected"]))

hist(log(lizard$rbc.count[lizard$status=="infected"]),xlab="Infected RBC Count", main = "")
hist(log(lizard$rbc.count[lizard$status=="noninfected"]),xlab="Non Infected RBC Count", main = "")



t.test(log(lizard$rbc.count) ~ lizard$status, alternative = "less", paired = F)

boxplot(log(lizard$rbc.count) ~ lizard$status, xlab = "status", ylab = "RBC Count (103 cells/mL)", col = "red")

triglycerides <- read.table("triglycerides.csv", header=T, sep=",")

ad.test(triglycerides$triglycerides[triglycerides$treatment=="before"]- triglycerides$triglycerides[triglycerides$treatment=="after"])

t.test(triglycerides$triglycerides ~ triglycerides$treatment, alternative = "less", paired = T)

triglycerides$treatment <- factor(triglycerides$treatment,c("before", "after"))

boxplot(triglycerides$triglycerides ~ triglycerides$treatment, xlab = "Triglyceride Treatment", ylab = "Triglyceride Level (mmol/L)", col = "blue")
