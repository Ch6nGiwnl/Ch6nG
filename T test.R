##T-TEST exercise1

x=c(18.9, 22.0, 19.4, 22.1, 19.8, 21.9, 20.2)
n=length(x)
��=0.05
v=n-1
samplemean=mean(x)
��=22.5
samplevariance=sd(x) ##sqrt(var(x))
testvalue=abs((samplemean-��)/(samplevariance/sqrt(n)))
print(testvalue)
checkvalue=qt(��/2,v,lower=F)
print(checkvalue)
t.test(x,��)
pvalue=2*pt(testvalue,v,lower=F)
print(pvalue)
