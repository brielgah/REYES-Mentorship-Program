library(fda)
data("CanadianWeather")
str(CanadianWeather)
# Taking just log daily average precipitation in mm
y.lprec <- CanadianWeather$dailyAv[,,3]
# Choosing just sydeny's values
l <- which(CanadianWeather$place == "Sydney")
# Taking the values of average precipitation in mm of sydney city 
y <- y.lprec[,l]
# Domain of day 1 to 365
day <- 1:365
# Plotting the data
plot(day, y, 
     type='o', pch = 16, cex = 0.5, col='royalblue2',
     xlab="day", ylab="log precipitation in mm",
     main="Daily average precipitation in mllimiter of Sydney")
x11(width = 40,height = 15)
par(mfrow=c(1,2))
rangeval = range(day);
# Period of fourier basis
period = 365
# Number of basis
nbasis = 3
# Creating fourier basis with period=365 and nbasis=3
fbasis = create.fourier.basis(rangeval,nbasis = nbasis,period=period)
#Evaluating fouerir basis
bvals = eval.basis(day,fbasis)
Xbasis = bvals;
# Linear regression
lm.fit = lm(y ~ 0 + Xbasis)   
y.fit = lm.fit$fitted.values; 
coef= lm.fit$coefficient
# Plotting the fourier basis smoothed
plot(day, y, type="n",lwd=4, col="black",
     xlab="day", ylab="log precipitation", 
     main=paste(nbasis, "Fourier Basis"), cex=1)
points(day, y, pch=1, cex=.5, col="blue", lwd=1)
lines(day, lm.fit$fitted.values, lwd=1, col="red")
# Number of basis
nbasis = 5
# Creating bspline basis with nbasis=5 and norder=4
splbasis = create.bspline.basis(rangeval,nbasis=nbasis,norder=4)
# Evaluating bspline basis
cvals = eval.basis(day,splbasis)
Xbasis = cvals
# Linear regression
lm.fit = lm(y ~ 0 + Xbasis)   
y.fit = lm.fit$fitted.values; 
coef= lm.fit$coefficient
# Plotting the bspline basis smoothed
plot(day, y, type="n",lwd=4, col="black",
     xlab="day", ylab="log precipitation", 
     main=paste(nbasis, "B-Spline basis"), cex=1)
points(day, y, pch=1, cex=.5, col="blue", lwd=1)
lines(day, lm.fit$fitted.values, lwd=1, col="red")

