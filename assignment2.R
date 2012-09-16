# Statistics One, Assignment 2
# Paul-Gabriel Müller
# Topic: Descriptive statistics, correlation data

library(psych)
#read data

t<-read.table("data/DAA.02.txt", header=TRUE)


# Provides descriptive statistics for all 8 measures, for each condition.

describe(t)
describe.by(t, t$cond)

# Provides an 8x8 correlation matrix, for each condition.

splitted=split(t, t$cond)
des=splitted$des
aer=splitted$aer

des<-des[3:10]
aer<-aer[3:10]

cor(des)
cor(aer)

# compare the two test runs with each other
cor(des$pre.wm.s1, des$pre.wm.s2)
cor(des$pre.wm.v1, des$pre.wm.v2)
cor(aer$pre.wm.s1, aer$pre.wm.s2)
cor(aer$pre.wm.v1, aer$pre.wm.v2)

#correlation between pre and post training

cor(aer$pre.wm.s1, aer$post.wm.s1)
cor(aer$pre.wm.v1, aer$post.wm.v1)
cor(aer$pre.wm.s2, aer$post.wm.s2)
cor(aer$pre.wm.v2, aer$post.wm.v2)

cor(des$pre.wm.s1, des$post.wm.s1)
cor(des$pre.wm.v1, des$post.wm.v1)
cor(des$pre.wm.s2, des$post.wm.s2)
cor(des$pre.wm.v2, des$post.wm.v2)




