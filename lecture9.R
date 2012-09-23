# Statistics One, Lecture 9, example script
# Multiple regression in R

library(psych)
endur <-read.table("data/STATS1.EX.04.txt", header = TRUE)

plot(endur$endurance ~ endur$age, main = "Scatterplot", ylab = "Endurance", xlab = "Age")

abline(lm(endur$endurance ~ endur$age), col = "blue")

plot(endur$endurance ~ endur$activeyears)

abline(lm(endur$endurance ~ endur$activeyears), col = "red")

#simple regression:
modelSimpleRegr = lm(endur$endurance ~ endur$age)
summary(modelSimpleRegr)
modelSimpleRegr2 = lm(endur$endurance ~ endur$activeyears)
summary(modelSimpleRegr2)

#multiple regression:
modelMR = lm(endur$endurance ~ endur$age + endur$activeyears)
summary(modelMR)



