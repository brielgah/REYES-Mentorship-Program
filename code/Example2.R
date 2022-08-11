rm(list=ls())
library(plotrix);
data(package="fda")
ndur <- 12
rep(1919:1999,1)
durtime <- rep((0:(ndur-1))/12,81) + rep(1919:1999,1,each=ndur)
goodsrange <- c(1919,2000)
monthlabs <- c("j","f","m","A","M","J","J","A","S","O","N","D")

#  compute log nondurables

lognondur <- log10(nondurables[0:972])

#  compute linear trend

lognondurhat <- lognondur - lsfit(durtime, lognondur)$residuals

#  set up plotting arrangements for one and two panel displays allowing
#  for larger fonts

#  plot the index
notequallyspaced <- nondurables[0:972]
notequallyspaced <- notequallyspaced[c(TRUE,FALSE,FALSE,FALSE)]
notyear <- durtime[c(TRUE,FALSE,FALSE,FALSE)]

x11(width = 9,height=3)
par(mfrow = c(1,2))
plot(durtime, nondurables[0:972], type="s", cex=1,
     xlim=goodsrange, ylim=c(0,120),
     xlab="Year", ylab="Index",main = "Goods manufacturing index",col='red')
#plot(notyear, notequallyspaced, type="p",cex = 1,xlim=goodsrange, ylim=c(0,120),
#     xlab="Year", ylab="Index")

