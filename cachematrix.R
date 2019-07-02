## Put comments here that give an overall description of what your
## functions do

## Caching the inverse of a matrix
## Week 3 assignment: cachematrix.R -- by melissa-tan

## Write a short comment describing this function

##The below function creates an object that is a matrix. Then caches its inverse.

makeCacheMatrix <- function(x = matrix()) {

    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) i <<- inverse
    getInverse <- function() i
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
    
}


## Write a short comment describing this function

## Using the matrix from "makeCacheMatrix" above, cacheSolve should retrive the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    i <- x$getInverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    matr <- x$get()
    i <- solve(matr, ...)
    x$setInverse(i)
    i
}
