#RUNS TEST
x=scan()
n=length(x)

xbig=x[x>=50]
print(xbig)
xb=length(xbig)

xsmall=x[x<50]
print(xsmall)
xs=length(xsmall)

meanx=(2*xb*xs/(xb+xs)+1)
print(meanx)

varx=(2*xb*xs*(2*xb*xs-n)/(n^2*(n-1)))
print(varx)

standardx=varx^(1/2)
print(standardx)

rx1=ifelse(x<50,1,0)
print(rx1)
rx2=diff(rx1)
print(rx2)
R=n-sum(rx2==0)
print(R)
sum(diff(rx1)!=0)+1
zx=((R-meanx)/standardx)
print(zx)
testvalue=qnorm(0.025,mean=0,sd=1,lower=F)
print(testvalue)
print(zx<testvalue)
