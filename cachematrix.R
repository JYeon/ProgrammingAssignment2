## Put comments here that give an overall description of what your
## functions do
## Caching the Inverse of a Matrix


## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse.

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
        
        

}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
                
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setInverse(i)
        i
}

