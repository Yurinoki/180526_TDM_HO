library(ggplot2)
library(GGally)

#attach(ds) #WNL_IN Gen Age Weight CCR ALB#
# Gen: F0M1 #

ds$GenF0M1 <- factor(ds$Gen, levels=c(0,1), labels=c("F","M"))
ds.plot <-
data.frame(Age=ds$Age, Weight=ds$Weight, ALB=ds$ALB, CCR=ds$CCR, Gen=ds$GenF0M1)

jpeg("pairs.jpg")

ggpairs(ds.plot, aes_string(colour="Gen", alpha=0.5))

dev.off()
