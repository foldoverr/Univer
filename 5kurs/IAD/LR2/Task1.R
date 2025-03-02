library(ggplot2)
library(MASS, lib.loc = "C:/Program Files/R/R-4.4.2/library")
X <- scan("C:\\Users\\1\\Desktop\\Univer\\5kurs\\IAD\\LR2\\X5.txt")
Y <- scan("C:\\Users\\1\\Desktop\\Univer\\5kurs\\IAD\\LR2\\Y5.txt")
plot(X, Y, main = "Облако точек", xlab = "X", ylab = "Y", pch = 19, col = "blue")
regr = lm(formula = Y ~ X)
abline(regr, col="red", lwd=3, add=TRUE)
regr
cor(X,Y)
