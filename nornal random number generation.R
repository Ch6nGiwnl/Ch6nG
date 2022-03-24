#nornal random number generation
x1=read.csv('D:/ORRA/AMA541/MIDTERM/data4.csv')
x2=apply(x1,2,as.numeric)[,1]
x=x2/100
#CLT
米=3
考=2
米+考*(sum(runif(12))-6)
#box muller
R1=runif(1)
R2=runif(1)
米+考*sqrt(-2*log(R1))*cos(2*pi*R2)
米+考*sqrt(-2*log(R1))*sin(2*pi*R2)