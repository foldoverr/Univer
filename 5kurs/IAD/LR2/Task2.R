telescope_data <- read.csv("C:\\Users\\1\\Desktop\\Univer\\5kurs\\IAD\\LR2\\magic04.data", header = FALSE)
colnames(telescope_data) <- c("fLength","fWidth","fSize","fConc", "fConc1", "fAsym", "fM3Long", "fM3Trans", "fAlpha", "fDist", "class")
plot(telescope_data$fLength, telescope_data$fWidth, main = "Облако точек: fLength vs fWidth", xlab = "fLength", ylab = "fWidth", pch = 19, col = "blue")

#Проведение исследования линейной регрессии
modellm <- lm(fWidth ~ fLength, data = telescope_data)
coefficients(modellm)
abline(modellm, col = "red")
cor(telescope_data$fLength,telescope_data$fWidth)
summary(modellm)

new_fLength <- c(50, 175, 250)
predicted_fWidth <- predict(modellm, newdata = data.frame(fLength = new_fLength))
points(new_fLength, predicted_fWidth, col = "green", pch = 19, cex = 1.5)
