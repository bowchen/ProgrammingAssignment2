## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Caching the Inverse of a Matrix: 
##Matrix inversion is usually a costly computation and there amy be some 
##benefit to caching the inverse of a matrix rather than computer it repeatedly


##this function below creates a matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) i <<- inverse
    getInverse <- function() i
    list(set = set,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function
##this function computes the inverse of the matrix creatd by the function above
##if the inverse has already been calculated, then the function below retrieve 
##the inverse from the cache. 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if (!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    m <- x$get()
    i <- solve(m, ...)
    x$setInverse(i)
    i
        ## Return a matrix that is the inverse of 'x'
}
