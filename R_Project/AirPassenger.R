data(AirPassengers)
ts_data <- AirPassengers
plot(ts_data, main="Monthly Airline Passenger Numbers", ylab="Passengers", xlab="Year")

# Decompose
decomposed <- decompose(ts_data)
plot(decomposed)

# Forecast
library(forecast)
model <- auto.arima(ts_data)
forecasted <- forecast(model, h=24)
plot(forecasted)

# Calculate a simple moving average for smoothing
ma <- filter(ts_data, rep(1/12, 12), sides=2)
plot(ts_data, col="blue", main="AirPassengers with Moving Average")
lines(ma, col="red", lwd=2)
legend("topleft", legend=c("Original", "12-Month MA"),
       col=c("blue", "red"), lty=1, bty="n")