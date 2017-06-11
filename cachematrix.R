## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## set the value of the matrix, get the value of the matrix, 
## set the inverse matrix, get the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  invMtx <- NULL
  setMtx <- function(y) {
    x <<- y
    invMtx <<- NULL
  }
  getMtx <- function() x
  setInverse <- function(inverse) invMtx <<- inverse
  getInverse <- function() invMtx
  list(setMtx = setMtx, getMtx = getMtx,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  invMtx <- x$getInverse()
  if(!is.null(invMtx)) {
    message("getting cached data")
    return(invMtx)
  }
  MtxData <- x$getMatrix()
  invMtx <- solve(MtxData, ...)
  x$setInverse(invMtx)
  invMtx     
  
   ## Return a matrix that is the inverse of 'x'
}
