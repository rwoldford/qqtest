## ---- setup, echo=FALSE-------------------------------------------------------
library(qqtest)

## ---- echo=FALSE, warning=FALSE, message=FALSE, fig.align="center", fig.width=7, fig.height=4, fig.cap="As m increases, Km has better properties"----
# compare K density to that of chi as degrees of freedom increase
op <-par(mfrow=c(1,2))
p <- seq(0.001, .999, 0.001)
#
# First get all the chi-square densities and plot them
xchi5 <- qchisq(p,5)
dchi5 <- dchisq(xchi5,5)
xchi10 <- qchisq(p,10)
dchi10 <- dchisq(xchi10,10)
xchi20 <- qchisq(p,20)
dchi20 <- dchisq(xchi20,20)
xchi30 <- qchisq(p,30)
dchi30 <- dchisq(xchi20,30)
xlim <- range(xchi5, xchi10, xchi20, xchi30)
ylim <- range(dchi5, dchi10, dchi20, dchi30)
plot(xchi5, dchi5, type="l", xlab="x", ylab="density", 
     xlim=xlim, ylim=ylim,  
     main="chi-squared densities", col="steelblue")
lines(xchi10, dchi10, lty=2, col="steelblue")
lines(xchi20, dchi20, lty=3, col="steelblue")
lines(xchi20, dchi30, lty=4, col="steelblue")
legend("topright",  
       legend=c("df = 5", "df = 10", "df = 20", "df = 30"),  
       lty=c(1,2,3,4),  
       title="degrees of freedom",  
       cex=0.75, bty="n", col="steelblue")
#
# Now get all the K densities and plot them
xkay5 <- qkay(p,5)
dkay5 <- dkay(xkay5,5)
xkay10 <- qkay(p,10)
dkay10 <- dkay(xkay10,10)
xkay20 <- qkay(p,20)
dkay20 <- dkay(xkay20,20)
xkay30 <- qkay(p,30)
dkay30 <- dkay(xkay20,30)
xlim <- range(xkay5, xkay10, xkay20, xkay30)
ylim <- range(dkay5, dkay10, dkay20, dkay30)
plot(xkay5, dkay5, type="l",  
     xlab="y", ylab="density", 
     xlim=xlim, ylim=ylim,  
     main="K densities", col="steelblue")
lines(xkay10, dkay10, lty=2, col="steelblue")
lines(xkay20, dkay20, lty=3, col="steelblue")
lines(xkay20, dkay30, lty=4, col="steelblue")
abline(v=1, col="grey", lty=5)
legend("topright",  
       legend=c("df = 5", "df = 10", "df = 20", "df = 30"),  
       lty=c(1,2,3,4),  
       title="degrees of freedom",  
       cex=0.75, bty="n", col="steelblue")
par(op)

## ---- echo=FALSE, results='asis'----------------------------------------------
df <- c(1:10,seq(15, 40, 5))
p <- c( 0.05, 0.5, 0.95)
fun <- function(p) qkay(p,df)
table <- as.data.frame(cbind(df,sapply(p, fun)))
colnames(table) <- c("df", paste0("p=", p))
knitr::kable(table)

## ---- warning=FALSE, message=FALSE, fig.align="center", fig.width=5, fig.height=4----
x <- seq(0,2,0.01)
plot(x, dkay(x, df=10), type="l", col="steelblue", 
     main="Density", xlab="x", ylab="f(x)")
abline(v=1.0, lty=2, col="grey")


## ---- warning=FALSE, message=FALSE, fig.align="center", fig.width=5, fig.height=4----
x <- seq(0,2,0.01)
plot(x, pkay(x, df=10), type="l", col="steelblue", 
     main="Distribution", xlab="x", ylab="F(x)")
abline(v=1.0, lty=2, col="grey")


## ---- warning=FALSE, message=FALSE, fig.align="center", fig.width=5, fig.height=4----
x <- seq(0,2,0.01)
p <- pkay(x, df=10)
plot(p, qkay(p, df=10), type="l", col="steelblue", 
     main="Quantile function", xlab="p", ylab="Q(p)")
abline(h=1.0, lty=2, col="grey")


## ---- warning=FALSE, message=FALSE, fig.align="center", fig.width=5, fig.height=4----
x <- rkay(1000, df=10)
hist(x, col="steelblue", 
     main="Pseudo-random numbers", xlab="x")
abline(v=1.0, lty=2, col="grey")


