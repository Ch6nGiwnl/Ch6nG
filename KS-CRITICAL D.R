D=as.null()
for(i in 1:10000)
  D=c(D,ks.test(runif(5),"punif")$statistic)
length(D)
quantile(D,0.95)


