##KS TEST

x1=read.csv('D:/ORRA/AMA541/MIDTERM/data1.csv')
x2=apply(x1,2,as.numeric)[,1]
x=x2/100
n=length(x)
print(x)
classesN=length(x)
print(classesN)
i=1:classesN
Yi=sort(x)
O=cbind(sort(x),(i-1)/classesN,i/classesN,Yi-(i-1)/classesN,Yi-i/classesN)
colnames(O)=c("x","(i-1)/N","i/N","yi","-yi")
print(O)
D=max(O[,4:5])
print(D)
ks.test(x,"punif")    
