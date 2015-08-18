library(ggplot2)

##### ggplot of normal distribution
#####
gg <- ggplot(mtcars, aes(x=mpg))
gg <- gg + geom_histogram(binwidth=2, colour="black", 
                          aes(y=..density.., fill=..count..))
gg <- gg + scale_fill_gradient("Count", low="#DCDCDC", high="#7C7C7C")
gg <- gg + stat_function(fun=dnorm,
                         color="red",
                         arg=list(mean=mean(mtcars$mpg), 
                                  sd=sd(mtcars$mpg)))

gg