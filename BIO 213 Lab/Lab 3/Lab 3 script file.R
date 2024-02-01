binom.test(13,22,.4038,"two.sided")

# binom.test(x, n, p, "alternative")
# • x is the number of “successes” (in this case the number of instances of sexual                                cannibalism)
# • n is the number of trials (in this case the total number of random matings)
# • p is the probability of success if the null hypothesis is true (the proportion of                                                             sexual cannibalism found from the other species of spider)
# • "alternative" should be replaced with "two.sided", "less", or "greater"

barplot(13/22, col="gray", ylim=c(0, 1), ylab="Proportion of 
cannibalistic matings")

# bar plot creation 

segments(0.7, 0.3635470, 0.7, 0.7929069, lwd = 1, col="black")

# error bars, .36 and .79 are confidence intervals from binom.test results

abline(.4038,0,lty=3, col = "red")

# Add a line indicating the hypothesized proportion of cannibalistic matings you used for thenull hypothesis and in the binomial test.

antlion <- read.table(file = "Lab3_DATA.csv", header = TRUE, sep = ",")

# Import table csv

summary(antlion)

ant.table = table(antlion$antlion.pits) #create variable

ant.table #call variable

observered <- as.vector(ant.table)

probs <- dpois(0:8, mean(antlion$antlion.pits)) #Make a vector of the probabilities for each number of ant lion pits per quadrat, assuming the null hypothesis is true, using the command:

expected <- probs*length(antlion$antlion.pits) #  Make a vector of the expected frequencies of each number of ant lion pits per quadrat using the command:
  
completed.table <- rbind(ant.table, expected) #Next we’re going to bind the expected frequencies to the observed values to build a plot. We’re going to do this by binding a row to the end of the table.

row.names(completed.table) <- c("Observed", "Expected") #change completed table row names

barplot(completed.table, beside=T, xlab="Antlion Pits", ylab="Quadrants", col=c("black", "gray"))

chisq.test(observered, p = probs, rescale.p = T) # chisquared

data(Titanic)
Titanic
titanic.table = apply(Titanic, c(2, 4), sum)
titanic.table

mosaicplot(titanic.table, col = c("gray", "white"), main = "")

chisq.test(titanic.table)
