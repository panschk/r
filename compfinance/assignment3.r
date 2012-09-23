# Introduction to Computational Finance and Financial Econometrics
# Assignment 3
# Paul-Gabriel Müller

#install.packages("mvtnorm")
library(mvtnorm)
#
# bivariate normal distribution
#
mu.x = 0.05 #μX
mu.y = 0.025 #μY
sig.x = 0.1 #σX
sig.y = 0.05 #σY


rho.xy = -.9
sig.xy = rho.xy*sig.x*sig.y
Sigma.xy = matrix(c(sig.x^2, sig.xy, sig.xy, sig.y^2), 2, 2, byrow=TRUE)

# use the rmvnorm() function to simulate from bivariate normal
?rmvnorm
n = 100
set.seed(1443)
xy.vals = rmvnorm(n, mean=c(mu.x, mu.y), sigma=Sigma.xy) 
head(xy.vals)

# scatterplot
plot(xy.vals[,1], xy.vals[,2], pch=16, cex=2, col="blue", 
     xlab="x", ylab="y")
title(paste(c("Bivariate normal: rho.xy=",rho.xy), collapse=""))
abline(h=mu.y, v=mu.x)
segments(x0=0, y0=min(xy.vals[,2]), x1=0, y1=0, col="red")
segments(x0=min(xy.vals[,1]), y0=0, x1=0, y1=0, col="red")


# compute area under bivariate standard normal distribution
# Finc P( -infinity < X < 0 and -infinity < Y < 0)
?pmvnorm
pmvnorm(lower=c(-Inf, -Inf), upper=c(0, 0), mean=c(mu.x, mu.y), sigma=Sigma.xy)

