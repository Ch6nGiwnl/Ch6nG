
#chisq test
x<-scan()
print(x)
classes=5
classesN=100/classes
E=(length(x)/classes)
print(E)
O=table((cut(x,breaks=seq(0,100,by=classesN),right=F)))
print(O)
tableX2=cbind(O,E,SINGLEX2=(O-E)^2/E)
print(tableX2)
X2=sum(tableX2[,3])
print(X2)
estimateE=classes-1-0
testvalue=qchisq(0.05,estimateE,lower=F)
print(testvalue)
print(X2<testvalue)