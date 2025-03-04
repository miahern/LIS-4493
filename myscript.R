mydata = read.csv("example_data(1).csv")
plot(mydata$xdata,mydata$ydata)
xdata <- c(-2, -1.64, -1.33, -0.7, 0, 0.45, 1.2, 1.64, 2.32, 2.9)
ydata <- c(0.699369, 0.700462, 0.695354, 1.03905, 1.97389, 2.41143, 1.91091, 0.919576, -0.730975, -0.42001)
plot(xdata, ydata, 
     col = "blue", pch = 16, cex = 1.5,
     xlab = "X Data", ylab = "Y Data", 
     main = "Enhanced Scatter Plot", las = 1,
     xlim = c(min(xdata)-0.5, max(xdata)+0.5), 
     ylim = c(min(ydata)-1, max(ydata)+1)) 
grid(col = "gray", lty = "dotted")
model <- lm(ydata ~ xdata)
abline(model, col = "red", lwd = 2)
lines(lowess(xdata, ydata, f = 0.5), col = "green", lwd = 2)
legend("topright", legend = c("Data Points", "Regression Line", "Smoothed Curve"),
       col = c("blue", "red", "green"), pch = c(16, NA, NA), 
       lty = c(NA, 1, 1), lwd = c(NA, 2, 2))
