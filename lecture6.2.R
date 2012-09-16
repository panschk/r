# Statistics One, lecture 6.2
# Test/retest reliability analysis in R
# (column format)

library(psych)

#read data
impact.col<-read.table("data/stats.ex.03.col.txt", header=TRUE)

# list names of variables
names(impact.col)

describe(impact.col)

# Correlations (TestA and TestB)

cor(impact.col$memory.verbal.A, impact.col$memory,verbal.B)
cor(impact.col$memory.visual.A, impact.col$memory,visual.B)
cor(impact.col$memory.vismotor.A, impact.col$memory,vismotor.B)
cor(impact.col$memory.general.A, impact.col$memory,general.B)
cor(impact.col$memory.control.A, impact.col$memory,control.B)



