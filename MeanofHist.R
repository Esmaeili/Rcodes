library(UsingR)
data(galton)
library(manipulate)
Histogram <- function(miu){
  hist(galton$child,col="blue",breaks=100)
  lines(c(miu, miu), c(0, 150),col="red",lwd=5)
  mse <- mean((galton$child - miu)^2)
  text(63, 150, paste("mu = ", miu))
  text(63, 140, paste("MSE = ", round(mse, 2)))
}
manipulate(Histogram(miu), miu = slider(62, 74, step = 0.5))
