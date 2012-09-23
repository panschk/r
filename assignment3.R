# Statistics 1, Assignment 3
# Paul-Gabriel Müller
library(psych)
options(scipen=20, digits =4)
fit<-read.table("data/DAA.03.txt", header = TRUE)


# Question 1
# Correlation between age and endurance
cor(fit$age, fit$endurance)

# Question 2
# Unstandardized regression coefficient for age, predicting endurance
lm(fit$endurance ~ fit$age)
# Question 3
# Standardized regression coefficient for age, predicting endurance
lm(scale(fit$endurance) ~ scale(fit$age))
# Question 4
# Unstandardized regression coefficient for age, predicting endurance (while also using activeyears to predict endurance)
lm(fit$endurance ~ fit$age + fit$activeyears)
# Question 5
# Standardized regression coefficient for age, predicting endurance (while also using activeyears to predict endurance)
lm(scale(fit$endurance) ~ scale(fit$age) + scale(fit$activeyears))
# Question 6
# Correlation between activeyears and endurance
cor(fit$activeyears, fit$endurance)
# Question 7
# Unstandardized regression coefficient for activeyears, predicting endurance
lm(fit$endurance ~ fit$activeyears)
# Question 8
# Standardized regression coefficient for activeyears, predicting endurance
lm(scale(fit$endurance) ~ scale(fit$activeyears))
# Question 9
# Unstandardized regression coefficient for activeyears, predicting endurance (while also using age to predict endurance)
lm(fit$endurance ~ fit$activeyears + fit$age)
# Question 10
# Standardized regression coefficient for activeyears, predicting endurance (while also using age to predict endurance)
lm(scale(fit$endurance) ~ scale(fit$age) + scale(fit$activeyears))

