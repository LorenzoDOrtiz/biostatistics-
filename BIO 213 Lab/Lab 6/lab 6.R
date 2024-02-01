library(nortest)
library(gplots)

drug <- read.table("antiviral.csv", header = TRUE, sep = ",")
bartlett.test(drug$time ~ drug$treatment)
results.aov <- aov(drug$time ~ drug$treatment)
ad.test(residuals(results.aov))

summary(results.aov)

TukeyHSD(results.aov) 

plot(TukeyHSD(results.aov))


plotmeans(drug$time ~ drug$treatment, xlab = "Drug Treatment", ylab = "Time until symptom alleviatoin (minutes)", connect = FALSE, n.label = FALSE)


# part 2 

roundup <- read.table("saprolegnia.csv", header = TRUE, sep = ",")

roundup$treatment <- factor(roundup$treatment)

log.diameter <- log(roundup$diameter,10)

bartlett.test(log.diameter ~ roundup$treatment)

results2.aov <- aov(log.diameter ~ roundup$treatment)

summary(results2.aov)

ad.test(results2.aov$residuals)

TukeyHSD(results2.aov)

plotmeans(log.diameter ~ roundup$treatment, xlab = "Roundup Treatment Concentration mg/L", ylab = "Diameter (mm)", connect = FALSE, n.label = FALSE)

# part 3 

parasites <- read.table("parasites.csv", header = TRUE, sep = ",")

log.number.helminths <- log(parasites$number.helminths+1,10)

bartlett.test(log.number.helminths ~ parasites$species)

kruskal.test(parasites$number.helminths ~ parasites$species)

pairwise.wilcox.test(parasites$number.helminths, parasites$species, p.adjust.method="bonferroni")

boxplot(parasites$number.helminths ~ parasites$species, xlab = "Parasite", ylab = "Number of Parasites", connect = FALSE, n.label = FALSE)

