## These functions capture/save calculated values that will need to be used multiple times in order to make 
## other calculations faster to compute.

## This function creates a special "matrix", takes the inverse of that matrix and caches its inverse. 

makeCacheMatrix <- function(x) {
  cacheSolve<-solve(x)
  cacheSolve<<-solve(x)
  cacheSolve
}

## This function will first check to see if a matrix has been inverted, by function "makeCacheMatrix" above.
##If the inverse has already been calculated (and the matrix has not changed), then the cachesolve
##will retrieve the inverse from the cache. Otherwise it will invert the matrix and 
##save the inverted matrix to a new variable.

cacheSolve <- function(x){
  y<-cacheSolve
  if y=solve(x){
    print "returning cache value"
    return cacheSolve
  }
  inv<-solve(x)
  inv<<-solve(x)
  inv
}


##Computing the inverse of a square matrix can be done with the solve function in R. 
##For example, if X is a square invertible matrix, then solve(X) returns its inverse.