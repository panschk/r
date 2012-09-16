# Statistics One, Lecture 3, example script
# Read data, plot histograms, get descriptives

# load library
library(psych)

# read data from table
ratings<-read.table("data/stats1_ex01.txt",header=T)

# describe "ratings"
class(ratings)

# list column names
names(ratings)

# layout: 4 histograms on one page
layout(matrix(c(1,2,3,4), 2, 2, byrow = TRUE))

# plot the histograms
hist(ratings$RedTruck, xlab = 'Rating')
hist(ratings$WoopWoop, xlab = 'Rating')
hist(ratings$HobNob, xlab = 'Rating')
hist(ratings$FourPlay, xlab = 'Rating')

# statistics table
describe(ratings)