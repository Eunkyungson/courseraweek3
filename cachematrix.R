## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  
  # 'makeCacheMatrix' 
  # makes a cache matrix from a given matrix
  
  cacheMatrix <- NULL
  
  
  setMatrix <- function(y) {
    x <<- y
    cacheMatrix <<- NULL
  }
  

  getMatrix <- function() x
  

  setCache <- function(inverse) cacheMatrix <<- inverse
  

  getCache <- function() cacheMatrix
  

  list(setMatrix = setMatrix,
       getMatrix = getMatrix,
       setCache = setCache,
       getCache = getCache)
  
  #---------------------------------------------------------
  
}

  
  
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  # 'cacheSolve'
  #---------------------------------------------------------
  

  cacheMatrix <- x$getCache()
  

  if (!is.null(cacheMatrix)) {
    message("loading cache matrix...")
    return(cacheMatrix)
  }
  
  # get the matrix, create, set, update and return the cache matrix
  else {
    dMatrix <- x$getMatrix()
    cacheMatrix <- solve(dMatrix, ...)
    x$setCache(cacheMatrix)
    return(cacheMatrix)
  }

  
  
  
  }




