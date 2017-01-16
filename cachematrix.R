## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
        
        StoreMatrix <- function(y) {
                x <<- y
                m <<- NULL
        }
        getMatrix <- function() x
        
        setsolve <- function(solve) {
                m <<- solve
        }
        
        getsolve <- function ()
                m
                
        
        
        list(StoreMatrix = StoreMatrix, getMatrix = getMatrix, setsolve = setsolve, getsolve = getsolve)
        m
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getsolve()
        if (!is.null(m)) {
                message ("getting cached data")
                return(m)
        }
        data <- x$getMatrix()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}
