# 获取默认加载包
> getOption("defaultPackages")

# 安装包
> install.packages("foo", depends=TRUE)
> install.packages()
> library()
> library(foo)

# 算数运算
> 2 + 3
> 4 * 5 / 6
> 7 ^ 8
> sqrt(2)
> exp(1)
> pi
> options(digits = 16)
> 10/3

# 赋值
> x <- 7 * 41 / pi

# 向量
> x <- c(74,31,95,61,76,34,23,54,96)
> seq(from = 2, by = -0.1, length.out = 4)
> 1:5
> LETTERS 
> letters
> x[1]
> x[2:4]
> x[c(1,3,4,8)]
> x[-c(1,3,4,8)]

# 函数和表达式
> sum(x)
> length(x)
> min(x)
> mean(x)
> sd(x)

# 画图
> hist(precip, breaks = 10,freq=TRUE, main = "")
> stripchart(precip, method="stack", xlab="rainfall")

