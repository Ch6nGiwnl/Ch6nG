##rejection method

curve(dnorm,xlim=c(-3,3),col='red')
abline(v=c(-3,3))
abline(h=dnorm(0))
points(1,0.3)#means reject this dot
abline(v=1,lty=2)
points(1.5,0.1)#we get,ÔÚdormÄÚ
abline(v=1.5,lty=2)
x=runif(1000,-3,3)
y=runif(1000,0,dnorm(0))
points(x,y)

i=which(y<dnorm(x))
points(x[i],y[i],col='blue')
hist(x[i])

pnorm(rnorm(100))
