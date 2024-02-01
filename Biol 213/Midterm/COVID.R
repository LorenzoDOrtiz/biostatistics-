table <- matrix(c(6280, 453, 7249, 363),  nrow = 2)
colnames(table) <- c("Recovered", "Died")
row.names(table) <- c("Male", "Female")
table

mosaicplot(table, col = c("green", "red"), main = "")

chisq.test(table)
