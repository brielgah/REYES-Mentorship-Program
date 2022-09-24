# This code create and plot the basis functions in particular constant, monomial, fourier and bspline basis
library("fda"); # Import fda package
#----- Constant Basis ---------------------
constantBasis = create.constant.basis(c(0,7)); #Create constant basis 
x <- seq(0,5,length.out=10) #Vector with values from [0-5]
constBasisEval = eval.basis(x,constantBasis) #Evaluating constant basis with values of x
matplot(x,constBasisEval,type='l',xlab = "t",ylab="x(t)",main="Constant basis") #Ploting constant basis evaluated
#----- Monomial Basis ---------------------
monomialBasis = create.monomial.basis(c(0,3), 4)
x <- seq(0,1,length.out=5)
monbasisEvaluate = eval.basis(x,monomialBasis)
matplot(x,monbasisEvaluate,type='l',xlab = "t",ylab="x(t)",lty=1,main="Monomial basis",col=rainbow(4))
x11(width = 9,height = 9)
par(mfrow = c(2,2),mar = c(5,4,4,2)+0.1)
matplot(x,monbasisEvaluate[,c('monomial0')],type='l',xlab = "t",ylab="x(t)",lty=1,main="1",col="blue")
matplot(x,monbasisEvaluate[,c('monomial1')],type='l',xlab = "t",ylab="x(t)",lty=1,main="t",col="red")
matplot(x,monbasisEvaluate[,c('monomial2')],type='l',xlab = "t",ylab="x(t)",lty=1,main="t^2",col="green")
matplot(x,monbasisEvaluate[,c('monomial3')],type='l',xlab = "t",ylab="x(t)",lty=1,main="t^3",col="pink")
#----- Fourier Basis ----------------------
fourierBasis = create.fourier.basis(rangeval = c(0,4),nbasis = 4,period = 2)
fourierEval = eval.basis(x,fourierBasis)
x11(width = 30,height = 3)
par(mfrow = c(1,2),mar = c(2, 2, 2, 2))
plot(fourierBasis,type='l',xlab = 't',ylab = 'x(t)',lty=1,main="Fourier basis",col = rainbow(5))
abline(v = 2, col = "darkgreen",lty = 2:3, lwd = c(1, 3))
matplot(x,fourierEval,type='l',xlab = 't',ylab = 'x(t)',lty=1,main="Fourier basis evaluated",col = rainbow(5))
#----- B-Spline Basis ---------------------
bsplineBasis4 = create.bspline.basis(rangeval = c(0,10),nbasis = 10, norder = 4)
bsplineEval4 = eval.basis(x,bsplineBasis4);
bsplineBasis2 = create.bspline.basis(rangeval = c(0,10),nbasis = 5, norder = 2)
bsplineEval2 = eval.basis(x,bsplineBasis2);
x11(width = 30,height = 3)
par(mfrow = c(1,2),mar = c(2, 2, 2, 2))
plot(bsplineBasis4, main="Cubic B-spline basis with K = 10")
plot(bsplineBasis2,  main="Linear B-spline basis with K = 5")
matplot(x,bsplineEval4, type='l', lty=1, col=rainbow(14),
        xlab="x", ylab="basis fns", main="Linear B-spline basis with K = 10")
matplot(x,bsplineEval4, type='l', lty=1, col=rainbow(10),
        xlab="x", ylab="basis fns", main="Linear B-spline basis with K = 5")
abline(v = c(0,1), col = "darkgreen",lty = 2:3, lwd = c(1, 3))
