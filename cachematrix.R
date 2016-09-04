## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function




makeCacheMatrix <- function(x = matrix()) {
  cache <- NULL
  set <- function(y) {
    x <<- y
    cache <<- NULL
  }
  get <- function() x
  setMatrix <- function(inverse) cache <<- inverse
  getinverse <- function() cache
  list(set = set, get = get,
       setMatrix = setMatrix,
       getInverse = getInverse)
}

## Write a short comment describing this function


        ## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  cache <- x$getInverse()
  if(!is.null(cache)) {
    message("getting cached data")
    return(cache)
  }
  matrix <- x$get()
  cache <- solve(matrix, ...)
  
}