x1=read.csv('D:/ORRA/AMA541/MIDTERM/data1.csv')
x2=apply(x1,2,as.numeric)[,1]
x=(x2/100)
print(x)
#exp
lamda=3
y1=-log(1-x[1:2]/lamda)
print(y)

#gamma
��=3
lamda=1/4
y21=(-1/lamda)*sum(log(1-x[1:��]))
y22=(-1/lamda)*sum(log(1-x[1+��:1+��+��]))
print(y21)
print(y22)

#poisson
��=5
t=1
lamda=��/t
y3=cumsum(-(1/lamda)*log(1-x))
print(y3)


