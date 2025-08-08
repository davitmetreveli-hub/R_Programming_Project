data(mtcars)
pairs(mtcars[, c("mpg", "hp", "wt", "disp")])
cor(mtcars)

# Regression
model <- lm(mpg ~ wt + hp, data=mtcars)
summary(model)
plot(mtcars$wt, mtcars$mpg, pch=19)
abline(lm(mpg ~ wt, data=mtcars), col="red")

#Correlation Heatmap
install.packages("corrplot")
library(corrplot)
corrplot(cor(mtcars), method="color", type="upper", tl.col="black", tl.srt=45)

#Pairwise Scatter Plots
pairs(~ mpg + hp + wt + disp, data=mtcars,
      main="Pairwise Plots of Selected Variables")

#BoxPlots by Category

boxplot(mpg ~ am, data=mtcars,
        names=c("Automatic", "Manual"),
        col=c("orange", "lightblue"),
        main="MPG by Transmission Type")

#Multiple linear regression
model <- lm(mpg ~ wt + hp, data=mtcars)
summary(model)

# Visualizing fit for weight
plot(mtcars$wt, mtcars$mpg, pch=19, col="blue")
abline(lm(mpg ~ wt, data=mtcars), col="red", lwd=2)


#Residual diagnostics
par(mfrow=c(2,2))
plot(model)








