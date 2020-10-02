## Put comments here that give an overall description of what your
## functions do


##Function makeCacheMatrix sets the value of inverse of matrix and returns the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
              inverse <- NULL
              set <- function(y) {
                    x <<- y
                    inverse <<- NULL
              }
        get <- function() x
        setinverse <- function(i) inverse <<- i
        getinverse <- function() inverse
        list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
  
  
  
  
}


## Function cacheSolve checks if the inverse is already calculated for the matrix. 
##If yes, it returns the inverse.
##If no, it calculates and sets its inverse, incase of future use and returns the calculated inverse

cacheSolve <- function(x, ...) {
         ## Return a matrix that is the inverse of 'x'
      inverse <- x$getinverse()
      if(!is.null(inverse)) {
                  message("getting cached data")
                  return(inverse)
                    }
          data <- x$get()
          inverse <- solve(data, ...)
          x$setinverse(inverse)
          inverse
}
  
  
  
  
  
