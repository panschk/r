# Statistics One Lecture 9b
# standardized multiple regression analysis

library(psych)
endur <-read.table("data/STATS1.EX.04.txt", header = TRUE)
#regression analysis (standardized)
model1.z = lm(scale(endur$endurance)~scale(endur$age))
summary(model1.z)
model2.z = lm(scale(endur$endurance)~scale(endur$activeyears))
summary(model2.z)
model3.z = lm(scale(endur$endurance)~scale(endur$age) + scale(endur$activeyears))
summary(model3.z)

# Model comparisons
comp1 = anova(model1.z, model3.z)
comp1
comp2 = anova(model2.z, model3.z)
comp2
