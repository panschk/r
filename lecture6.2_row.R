# Statistics One, lecture 6.2
# Test/retest reliability analysis in R
# (row format)

library(psych)

#read data
impact.row<-read.table("data/STATS1.EX.03.ROW.txt", header=TRUE)

# list names of variables
names(impact.row)

describe.by(impact.row, impact.row$test)

# Correlations (TestA and TestB)

cor(impact.row$memory.verbal[impact.row$test=="A"], impact.row$memory.verbal[impact.row$test=="B"])
cor(impact.row$memory.visual[impact.row$test=="A"], impact.row$memory.visual[impact.row$test=="B"])
cor(impact.row$speed.vismotor[impact.row$test=="A"], impact.row$speed.vismotor[impact.row$test=="B"])
cor(impact.row$speed.general[impact.row$test=="A"], impact.row$speed.general[impact.row$test=="B"])
cor(impact.row$impulse.control[impact.row$test=="A"], impact.row$impulse.control[impact.row$test=="B"])



