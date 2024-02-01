# Welcome to Introductory Biostatistics!
# This is your Lab 1 Script File

3 + 10

# Type the commands from your Lab 1 here.
# Place your cursor on the line containing the command and 
# hit Run (above) or hold down the control key and press return.
# (On a Mac, hold the command key down and press return).
# That will cause the command to be executed in the R console below.
# Save your R Script file at regular intervals by pressing the Save icon
# above.  This will save your work in a format that will allow you
# to re-create it easily at any time.

#Part 1 Basics
v <- c(1,2,3,4,5,6,7,8,9,10)

# Now finish your script file by typing each of the commands in the lab:

v <- c(1,2,3,4,5,6,7,8,9,10) 

# V - vector is called v
# <- - assignment operator
# c - combine

v[7]

v2 <- c(1:10)
v2

v3 <- seq(1,10)
v3

iris
iris[1,3]
iris[100,5]
iris[1:10,]
iris10 <- iris[1:10,]
iris10
iris10 <- c(1:10)
iris10
rm(iris10)
dir()
smoking <- read.csv("cancer_and_smoking.csv", header=F)
smoking[1:10,]
names(smoking) <- c("State", "Cigarette", "Bladder", "Lung",
                    "Kidney", "Leukemia") 
smoking[1:10,]
titanic <- read.table("titanic.txt", header=T, sep="\t")
titanic[1:10,]
?read.table
names(titanic)
boxplot(Age ~ PClass, data=titanic)
boxplot(Age ~ Survived, data=titanic) 
hist(titanic$Age)
hist(titanic$Age, main = "Histogram of the Age of the Titanic
Passengers", xlab = "Passenger Age") 
library(exactRankTests)#no longer supported/developed
