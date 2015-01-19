## Function makeCacheMatrix takes argument x, then sets and gets the inverse of the matrix.
## If the matrix is null, the result m is stored as NULL.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Function cacheSolve takes the argument x which is the is the function that has been assinged makeCacheMatrix
## It checks to see if the inverse of the matrix has already been calculated, and if so gets
## and returns the inverse of the matrix.
## If the there is no value it returns an error.

cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setinverse(m)
      m
}
