# README.md for code test result
makeCacheMatrix <- function(x=numeric()){
 cache <- NULL
 setMatrix <- function(y){
   x <<- y
   #get a new value
   cache <<- NULL
}

 getMatrix <- function() x
 
 cacheInverse <- function(solve) cache <<- solve
 
 getInverse <- function() cache
 
 # return a list of functions.
 list(setMatrix=setMatrix,
      getMatrix=getMatrix,
      cacheInverse=cacheInverse,
      getInverse=getInverse)
}

cacheSolve <- function(x,...){
 inver <- x$getInverse()    
 if(!is.null(inver)){
   message("getting cached data")
   return(inver)
 }
 data <- x$getMatrix()
 inver <- solve(data,...)
 x$cacheInverse(inver)
 inver
}
