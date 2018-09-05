## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(data = matrix()) {
inverse <- NULL
        set <- function(cache) {
                data <<- cache
                inverse <<- NULL
        }
        get <- function() data
        setInverse <- function(inv) inverse <<- inv
        getInverse <- function() inverse
       
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         inverse <- x$getInverse()
        if (!is.null(inverse)) {
                message("getting data")
                return(inverse)
        }
        mat <- x$get()
        inverse <- solve(mat, ...)
        x$setInverse(inverse)
        inverse
}
