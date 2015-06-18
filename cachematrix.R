## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        thisInverse <- NULL
        set <- function(someMatrix) {
                x <<- someMatrix
                thisInverse <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) thisInverse <<- inverse
        getInverse <- function() thisInverse
        list(set = set, 
             get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse()
        if (!is.null(inverse)) {
                message("getting cached inverse")
                return (inverse)
        }
        matrix <- x$get()
        inverse <- solve(matrix)
        x$setInverse(inverse)
        inverse
}
