## Below are functions for Programming Assignment 2 R-Programming course from Coursera

## Function below creates a special "matrix" object, which contains a functions
## for set and get values and inversed values of the matrix. 

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <-function() x
    setsolve <- function(solve) inv <<- solve
    getsolve <- function() inv
    list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Following function solves the special "matrix" created with above function
## computation for solving matrix starts only if it's not in cache already

cacheSolve <- function(x, ...) {
     inv <- x$getsolve()
     if(!is.null(inv)) {
         massage("Getting cached data...")
        
          ## Return an inversed matrix frome cache if it's exist 
         return(inv)
     }
     data <- x$get()
     inv <- solve(data, ...)
     
     ## Putting our inversed matrix to cache 
     x$setsolve(inv)
     
     ## Return a matrix that is the inverse of 'x'
     inv 
     
}
