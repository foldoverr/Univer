telescope_data <- read.csv("C:\\Users\\1\\Desktop\\Univer\\5kurs\\IAD\\LR2\\magic04.data", header = FALSE)
colnames(telescope_data) <- c("fLength","fWidth","fSize","fConc", "fConc1", "fAsym", "fM3Long", "fM3Trans", "fAlpha", "fDist", "class")
X <- as.matrix(cbind(1, telescope_data[,1:(ncol(telescope_data)-1)]))
Y <- as.matrix(telescope_data[,ncol(telescope_data)])

beta <- solve(t(X) %*% X) %*% t(X) %*% Y
print(beta)
print(cor(telescope_data))

model = lm(class ~ -1 + fLength + fWidth + fSize + fConc + fAsym+ fM3Long + fM3Trans + fAlpha + fDist, data=telescope_data)
summary(model)

set.seed(123)
sample_indices <- sample(1:nrow(telescope_data),10)
predicted_lm <- predict(model, newdata = telescope_data[sample_indices,])
predicted_formula <- as.vector(X[sample_indices,] %*% beta)
actual_values <- telescope_data[sample_indices,ncol(telescope_data)]
results_comparison <- data.frame(
  Actual = actual_values,
  Predicted_formula = predicted_formula,
  Predicted_lm = predicted_lm)
print(results_comparison)