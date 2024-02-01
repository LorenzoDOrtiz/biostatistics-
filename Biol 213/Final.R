#gender 
table.3<- matrix(c(491, 180 ,518,0),  nrow = 2)
colnames(table.3) <- c("0","1")
row.names(table.3) <- c("returned", "not returned")
table.3
mosaicplot(table.3, col = c("gray", "pink"), main = "")
chisq.test(table.3)

#age class
table.4 <- matrix(c(190, 829, 706, 0, 113, 0), nrow = 2)
colnames(table.4) <- c("0", "1", "2")
row.names(table.4) <- c("Returned", "Not Returned")
table.4
mosaicplot(table.4, col = c("gray", "pink"), main = "")
chisq.test(table.4)

#Handling Test
table.1 <- matrix(c(37, 830, 116, 0, 27, 0), nrow = 2)
colnames(table.1) <- c("0", "1", "2")
row.names(table.1) <- c("Returned", "Not Returned")
table.1

mosaicplot(table.1, col = c("gray", "pink"), main = "")
chisq.test(table.1)

#Stranger Test
table.2 <- matrix(c(124, 829, 31, 0, 25, 0), nrow = 2)
colnames(table.2) <- c("0", "1", "2")
row.names(table.2) <- c("Returned", "Not Returned")
table.2

mosaicplot(table.2, col = c("gray", "pink"), main = "")
chisq.test(table.2)

