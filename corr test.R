#corelation test
x1=read.csv('D:/ORRA/AMA541/MIDTERM/data1.csv')
x2=apply(x1,2,as.numeric)[,1]
x=x2/100
lag=5
¦Á=0.05
n=length(x)
print(x)

R=(1/(n-lag))*sum((x[1:(n-lag)]-0.5)*(x[(1+lag):n]-0.5))
print(R)
checkvalue=sqrt(n-lag)*R
print(checkvalue)
pvalue=qnorm(¦Á/2,lower=F)
print(checkvalue<pvalue)