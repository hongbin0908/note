# 常用的样本空间
> library(prob)
> tosscoin(1)
> tosscoin(3)
> rolldie(1)
> cards()
> urnsamples(1:3, size=2, replace=TRUE, ordered=TRUE)

# %in%
> x <- 1:10
> y <- 8:12
> y %in% x

# whether the whole vector y is in x
> isin(x,y)
> all(x,y)

# 获取子集
> S <- rolldie(4)
> subset(S, isin(S, c(2,2,6), ordered=TRUE))

#集合运算
> union(A,B)
> intersect(A,B)
> setdiff(A,B)
