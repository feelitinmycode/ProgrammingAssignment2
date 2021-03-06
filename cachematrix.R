## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    ## Create a special matrix object
    
    inv <- NULL
    
    set <- function(y) {
      x <<- y
      inv <<- null
    }
    
    get <- function() x
    
    setinverse <- function(inverse) inv <<- inverse
  
    getinverse <- function() inv
    
    list(set = set, get = get, 
      setinverse = setinverse,
      getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
  ## Return the inverse of the matrix 

  inv <- x$getinverse()
  
  if (!is.null(inv)) {
    message("getting cached data")
    return (inv)
  }
  
  inv <- solve(x)
  x$setinverse(inv)
  inv
  
}
