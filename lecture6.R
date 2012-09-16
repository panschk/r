# Statistics One, Lecture 6, example script
# read data, plot histograms, get descriptives,
# examine scatterplots, run correlations

library(psych)
impact<-read.table("data/STATS1.EX.02.TXT", header=TRUE)

class(impact)

names(impact)

describe(impact)

hist(impact$memory.visual, xlab="Visual Memory", main="Histogram", col="red")

plot(impact$memory.verbal ~ impact$memory.visual, main="Scatterplot", 
		ylab="Verbal memory", xlab="Visual memmory")

abline(lm(impact$memory.verbal ~ impact$memory.visual), col="blue")

#get correlation:
cor(impact$memory.verbal, impact$memory.visual)
#testing for significance:
cor.test(impact$memory.verbal, impact$memory.visual)

#all correlations in a matrix:
cor(impact)

#scatterplot matrix
library(gclus)
impact.r = abs(cor(impact))
impact.col = dmat.color(impact.r)
impact.o<-order.single(impact.r)
cpairs(impact, impact.o, panel.colors=impact.col, gap=.5,
	main="Variables Ordererd and Colored by Correlation")
