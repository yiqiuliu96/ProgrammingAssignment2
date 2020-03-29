## Put comments here that give an overall description of what your
## functions do

# These pair of function is to calculate the inverse of a given matrix, while in a faster way that the function
# can cache the existing inverse matrix.

## Write a short comment describing this function

# This function is used to create a special matrix.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        # set the value of the matrix
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        # get the value of the matrix
        get <- function() x
        # set the inverse matrix
        setinverse <- function(inverse) i <<- solve(inverse)
        # get the inverse matrix
        getinverse <- function() i
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function

# This function calculates the inverse of the matrix created in the above function
# and uses the cached result if the matrix is the same.

cacheSolve <- function(x, ...) {
        # Load the cached matrix
        i <- x$getinverse()
        # Check if the cached data is not NULL
        if (!is.null(i)) {
                message("Getting cached data...")
                reture(i)
        }
        # If no cached data exists, calculate the inverse matrix using solve function
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
