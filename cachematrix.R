## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCachematrix creates a fucntion that firstly sets the value of the matrix (user to do), and then it gets the value of the matrix by getting the vlaue of said matrix. It checks fist whether the inverse has allready been calcualted, if it has then it skips the steps and retreives it from the inverse ones allready cached
### The value of the inversee of the matrix is then set and the inverse is retreived via the getinv function

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function
## if the inverse has already been calcualted then the follwing fucntion will retreive the inverse from the cache i.e. if it is null (if(!is.null(m)))
If the inverse has already been calculated (and the matrix has not changed), then cacheSolveshould retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {

        ## Return a matrix that is the inverse of 'x'
         m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m

}



makeCacheMatrix <- function


