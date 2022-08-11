rm(list=ls())
library(fda)
data(package="fda")
Time = c(0, as.numeric(dimnames(gait)[[1]]), 1)
gait01        = 0.5*(gait[20,,]+gait[1,,])
Gait          = array(NA, dim=c(22, 39, 2))
dimnames(Gait)= c(list(Time), dimnames(gait)[2:3])
Gait[1,,]     = gait01
Gait[2:21,,]  = gait
Gait[22,,]    = gait01

before = 17:22
Before = c(seq(-0.225, -0.025, by=0.05), 0)

after = 1:6
After = c(1, seq(1.025, 1.225, by=0.05))

# Figure 1.6
x11(width = 9,height = 3)
op = par(mfrow=c(1,2))
matplot(Time, Gait[,,'Hip Angle'], ylab='Hip Angle (degrees)',
        type='l', xlim=c(-0.25, 1.25), lty='solid', xlab='Time (portion of gait cycle)')
matlines(Before, Gait[before,,'Hip Angle'], lty='dotted')
matlines(After, Gait[after,,'Hip Angle'], lty='dotted')
abline(v=0:1, lty='dotted')

matplot(Time, Gait[,,'Knee Angle'], ylab='Knee Angle (degrees)',
        type='l', xlim=c(-0.25, 1.25), lty='solid',
        xlab='Time (portion of gait cycle)')
matlines(Before, Gait[before,,'Knee Angle'], lty='dotted')
matlines(After, gait[after,,'Knee Angle'], lty='dotted')
abline(v=0:1, lty='dotted')
mtext("How Children Walk",side = 3,line = -2,outer = TRUE,cex=2.0)
par(op)
