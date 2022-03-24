x1=read.csv('D:/ORRA/AMA541/MIDTERM/data1.csv')
x=apply(x1,2,as.numeric)
print(x)
n=length(x)
print(n)
y=cut(x,c(0,25,50,75,99))
print(y)
k=4


O=addmargins(table(y[-n],y[-1]),2)
print(O)
testvalue=(k^2/n)*sum((O[,1:4]-n/k^2)^2)-(k/n)*sum((O[,5]-n/k)^2)
print(testvalue)
v=k*(k-1)
qchisq(0.995,v)
