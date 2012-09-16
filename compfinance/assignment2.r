# Introduction to Computational Finance and Financial Econometrics
# Assignment 2
# Paul-Gabriel Müller
# Topic: Probability

# question 1:
# Suppose X is a normally distributed random variable with mean 0.05 and variance (0.10)2. Compute the following.
# a) Pr(X>.10)
1- pnorm(0.1, mean=0.05, sd=0.1)

# question 2:
# Suppose X is a normally distributed random variable with mean 0.05 and variance (0.10)2. Compute the following.
# Pr(X<−.10)
pnorm(-0.1, mean=0.05, sd=0.1)

# question 3:
# Suppose X is a normally distributed random variable with mean 0.05 and variance (0.10)2. Compute the following.
# c) Pr(−0.05<X<0.15)
x = pnorm(-0.05, mean=0.05, sd=0.1)
y = pnorm(0.15, mean=0.05, sd=0.1)
y-x

#question 4:
#1% quantile, q.01
qnorm(0.01, mean=0.05, sd=0.1)

#question 5:
#  5% quantile, q.05
qnorm(0.05, mean=0.05, sd=0.1)

#question 6:
# 95% quantile, q.95
qnorm(0.95, mean=0.05, sd=0.1)


#question 7:
# 95% quantile, q.95
qnorm(0.99, mean=0.05, sd=0.1)

# question 8:
# Let X denote the monthly return on Microsoft Stock and let Y denote the monthly return on Starbucks stock. 
#Assume that X∼N(0.05,(0.10)2) and Y∼N(0.025,(0.05)2).
# Using a grid of values between –0.25 and 0.35, plot the normal curves 
# for X and Y. Make sure that both normal curves are on the same plot.
# Which stock has the higher risk?

intervals <- seq(-0.25, 0.35,length=100)
hx <- dnorm(intervals,0.05,0.1)
hy <- dnorm(intervals,0.025,0.05)
plot(intervals, hx, type="l", col="blue")
lines(intervals, hy, type="l", col="green")

# Question 9
# Let R denote the simple monthly return on Microsoft stock and let W0 denote the initial wealth to be invested 
# over the month. Assume that R∼N(0.04,(0.09)^2)) and that W0=$100,000
# Determine the 1% and 5% value-at-risk (VaR) over the month on the investment. 
# That is, determine the loss in investment value that may occur over the next month with 1% probability 
# and with 5% probability. 

w0 = 100000
qnorm(0.01, mean=0.04, sd=0.09) * w0
qnorm(0.05, mean=0.04, sd=0.09) * w0

# Question 10
# Let the r denote the continuously compounded monthly return on Microsoft stock and let W0 
# denote the initial wealth to be invested over the month. Assume that r∼iid N(0.04,(0.09)2) 
# and that W0=$100,000.
# Determine the 1% and 5% value-at-risk (VaR) over the month on the investment. 
# That is, determine the loss in investment value that may occur over the next month 
#  with 1% probability and with 5% probability. 
#(Hint: compute the 1% and 5% quantile from the Normal distribution for r and then convert 
# continuously compounded return quantile to a simple return quantile using the transformation R=er−1)

w0 = 100000;
# R = (e^r) -1 <=> r = ln(1+R)
r.01 = qnorm(0.01, mean=0.04, sd=0.09)
r.05 = qnorm(0.05, mean=0.04, sd=0.09)

R.01 = exp(r.01) -1
R.05 = exp(r.05) -1

R.01*w0
R.05*w0

#Question 11
# For the following questions:
  
# Consider a one month investment in two Northwest stocks: Amazon and Costco. 
# Suppose you buy Amazon and Costco at the end of September at P(A,t−1)=$38.23, P(C,t−1)=$41.11 and then sell 
# at the end of October for P(A,t)=$41.29, P(C,t)=$41.74. (Note: these are actual closing prices for 2004 taken 
# from Yahoo!)
# What are the simple monthly returns for the two stocks?

R.A = (41.29 - 38.23) / 38.23
R.C = (41.74 - 41.11) / 41.11
# Question 12
# What are the continuously compounded returns for the two stocks?
r.A = log(1 + R.A)
r.C = log(1 + R.C)
r.A
r.C

# Question 13
# Suppose Amazon paid a $0.10 per share cash dividend at the end of October. 
# What is the monthly simple total return on Amazon? What is the monthly dividend yield?

Rsimple = (41.29 + 0.1 - 38.23) / 38.23 
divYield = 0.01 / 38.23
Rsimple * 100
divYield * 100

#question 14
# Suppose the monthly returns on Amazon from question 12 above are the same every month for 1 year.
# Compute the simple annual returns, as well as the continuously compounded annual returns. 
# r is always smaller than R
R.month = (41.29 - 38.23) / 38.23
R.year = ((1+R.month)^12) -1
R.year*100

r.year = log(1+R.year)
r.year*100
# Question 15
Question 15
# At the end of September 2004, supposed you have $10,000 to invest in Amazon and Costco over the next month.
# If you invest $8,000 in Amazon and $2,000 in Costco, what are your portfolio shares, xA and xC.

# Question 16
# Continuing with the previous question, compute the monthly simple return on the portfolio.
# Assume than no dividends are paid. 

R.total = 0.8 * R.A + 0.2*R.C
R.total*100