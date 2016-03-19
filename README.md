# Introduction
### my workplace is "F:/R_Coursera",replace the path and use your directory
### execute "source("cachematrix.R")",
### read the R script and test input and output.
### Below is my test code

####> source("cachematrix.R")
####> a<-makeCacheMatrix(matrix(c(1,2,10,11),nrow=2,ncol=2));
####> summary(a);
####             Length Class  Mode    
####setMatrix    1      -none- function
####getMatrix    1      -none- function
####cacheInverse 1      -none- function
####getInverse   1      -none- function
####> a$getMatrix();
####     [,1] [,2]
####[1,]    1   10
####[2,]    2   11
####> cacheSolve(a)
####           [,1]       [,2]
####[1,] -1.2222222  1.1111111
####[2,]  0.2222222 -0.1111111
####> cacheSolve(a)
####getting cached data
####           [,1]       [,2]
####[1,] -1.2222222  1.1111111
####[2,]  0.2222222 -0.1111111

### the test display when the second time we run the function, we get the cached value.
