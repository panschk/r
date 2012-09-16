# Statistics One, Assignment 1
# Paul-Gabriel Müller
# Read the data, plot and "describe"

library(psych)

testscores<-read.table("data/DAA.01.txt",header=TRUE)
t<-testscores


describe(t)

# read the columns into temporary vectors
pre_s<-t$pre.wm.s
post_s<-t$post.wm.s
pre_v<-t$pre.wm.v
post_v<-t$post.wm.v

# used to split the data
isDES<-t$cond=="des"
isAER<-t$cond=="aer"

# create the actual vectors to work with
pre_s_DES <- pre_s[isDES]
post_s_DES <- post_s[isDES]
pre_v_DES <- pre_v[isDES]
post_v_DES <- post_v[isDES]


pre_s_AER <- pre_s[isAER]
post_s_AER <- post_s[isAER]
pre_v_AER <- pre_v[isAER]
post_v_AER <- post_v[isAER]

# layout and drawing
mymatrix<-matrix(c(1, 2, 3, 4, 5, 6, 7, 8),4, 2,byrow=TRUE)
layout(mymatrix)

# "bins" for results 
breaksV<-seq(0, 55, 2)
hist(pre_s_DES, xlab='Test Score', breaks=breaksV)
hist(post_s_DES, xlab='Test Score',breaks=breaksV)
hist(pre_v_DES, xlab='Test Score', breaks=breaksV)
hist(post_v_DES, xlab='Test Score',breaks=breaksV)
hist(pre_s_AER, xlab='Test Score', breaks=breaksV)
hist(post_s_AER, xlab='Test Score',breaks=breaksV)
hist(pre_v_AER, xlab='Test Score', breaks=breaksV)
hist(post_v_AER, xlab='Test Score',breaks=breaksV)

newData<-data.frame(pre_s_DES, post_s_DES, pre_v_DES, post_v_DES, 
		pre_s_AER, post_s_AER, pre_v_AER, post_v_AER)
describe(newData)

# get the variance for question 3:
var(pre_s_DES)
var(pre_v_DES)
var(pre_s_AER)
var(pre_v_AER)


