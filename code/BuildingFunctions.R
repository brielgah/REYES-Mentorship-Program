# This code create a basis expansion using bspline basis and fourier basis using a matrix of coefficients with random values
library("fda");
n <- 5; #Number of samples
nb <- 30; #Number of functions
coef = matrix(rnorm(n*nb),nb,n); #Creating matrix of coefficients
bsbasis.obj <- create.bspline.basis(rangeval=c(0,1),nbasis = nb,norder=5) #Create bspline basis of order 5
fd_obj <- fd(coef,bsbasis.obj) # Creating fd object with coefficients matrix and basis function
x <- seq(0,1,length.out=100) # Create domain 
fd_eval <- eval.fd(x,fd_obj) # Evaluating function in the domain
x11(width = 30,height = 3)
par(mfrow = c(1,2),mar = c(2, 2, 2, 2))
matplot(x, fd_eval,  
        type='l', lty = 1, col=rainbow(n),
        ylab="", xlab="x", 
        main='5 functions built using b-spline basis')
n <- 1; #Number of functions
nb <- 40; #Number of basis
set.seed(123)
coef <- rnorm(nb+1,mean=0,sd=1)
#coef = rnorm(nb+1,mean=15,sd=0.5); #Creating matrix of coefficients
bsbasis.obj <- create.fourier.basis(rangeval=c(0,1),nbasis = nb,period=4) #Create bspline basis of order 5
fd_obj <- fd(coef,bsbasis.obj)
fd_eval <- eval.fd(x,fd_obj)
matplot(x, fd_eval,  
        type='l', lty = 1, col=rainbow(n),
        ylab="", xlab="x", 
        main='One functions built using fourier basis')